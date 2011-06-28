<?php

use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Silex\Application;
use Silex\Extension\TwigExtension;
use Silex\Extension\UrlGeneratorExtension;
use Silex\Extension\SymfonyBridgesExtension;
use Silex\Extension\DoctrineExtension;

require_once __DIR__.'/../vendor/silex/vendor/Symfony/Component/ClassLoader/UniversalClassLoader.php';

use Symfony\Component\ClassLoader\UniversalClassLoader;

// Autoloading
$loader = new UniversalClassLoader();
$loader->registerNamespaces(array(
    'Symfony\\Bridge'  => __DIR__.'/../vendor',
    'Symfony'          => __DIR__.'/../vendor/silex/vendor',
    'Silex'            => __DIR__.'/../vendor/silex/src',
    'Doctrine\\DBAL'   => __DIR__.'/../vendor/doctrine-dbal/lib',
    'Doctrine\\Common' => __DIR__.'/../vendor/doctrine-common/lib',
));
$loader->registerPrefixes(array(
    'Pimple' => __DIR__.'/../vendor/silex/vendor/pimple/lib',
    'Twig_'  => __DIR__.'/../vendor/twig/lib',
));
$loader->register();

// Configuration
$app = new Application();
$app->register(new SymfonyBridgesExtension());
$app->register(new UrlGeneratorExtension());
$app->register(new TwigExtension(), array(
    'twig.path'    => array(__DIR__.'/../templates', __DIR__.'/../sphinx'),
    'twig.options' => array('cache' => __DIR__.'/../cache', 'debug' => true, 'strict_variables' => true),
));
$app->register(new DoctrineExtension(), array(
    'db.options' => array(
        'driver'   => 'pdo_mysql',
        'dbname'   => 'dbswiftmailer',
        'host'     => 'localhost',
        'user'     => 'root',
        'password' => null,
    )
));
$app['twig.configure'] = $app->protect(function ($twig) use ($app) {
    $twig->addGlobal('currentDownload', DownloadManager::getCurrentStableDownload($app['db']));
});

class Download
{
}

class DownloadManager
{
    static public function getCurrentStableDownload($db)
    {
        return self::getDownload($db, 'SELECT *
            FROM download
            WHERE revoked != 1 AND stable = 1
            ORDER BY version_number DESC, time_created DESC
            LIMIT 1
        ');
    }

    static public function getCurrentUnstableDownload($db)
    {
        if (!$current = self::getCurrentStableDownload($db)) {
          return false;
        }

        return self::getDownload($db, 'SELECT *
            FROM download
            WHERE revoked != 1 AND stable != 1 AND version_number > :number
            ORDER BY version_number DESC, time_created DESC
            LIMIT 1
        ', array(':number' => $current->version_number));
    }

    static public function findAllAvailableDescendingByVersion($db)
    {
        $sth = $db->executeQuery('SELECT *
            FROM download
            WHERE revoked != 1
            ORDER BY version_number DESC, time_created DESC
        ');
        $sth->setFetchMode(\PDO::FETCH_CLASS, 'Download');

        $downloads = array();
        foreach ($sth->fetchAll() as $download) {
            $downloads[] = self::fixDownload($download);
        }

        return $downloads;
    }

    static public function findAvailableByName($db, $filename)
    {
        return self::getDownload($db, 'SELECT *
            FROM download
            WHERE revoked != 1 AND filename = :filename
            LIMIT 1
        ', array(':filename' => $filename));
    }

    static protected function getDownload($db, $sql, array $params = array())
    {
        $sth = $db->executeQuery($sql, $params);
        $sth->setFetchMode(\PDO::FETCH_CLASS, 'Download');
        $hash = $sth->fetch();

        return $hash ? self::fixDownload($hash) : false;
    }

    static protected function fixDownload($download)
    {
        if (preg_match('~([0-9]+)(?:\.([0-9]+))?(?:\.([0-9]+))?(?:-(alpha|a|beta|b|rc)-?([0-9]+))?~i', $download->filename, $matches)) {
            $download->version = $matches[0];
        } else {
            $download->version = '0.0.0';
        }

        return $download;
    }
}

// Application
$app->get('/', function() use ($app) {
    return $app['twig']->render('index.html');
})->bind('homepage');

$app->get('/download_file/{filename}', function($filename) use ($app) {
    if (!$download = DownloadManager::findAvailableByName($app['db'], $filename)) {
        throw new NotFoundHttpException('Download does not exist');
    }

    if ('github' == $download['source']) {
        $url = sprintf('http://cloud.github.com/downloads/swiftmailer/swiftmailer/%s', $download['filename']);
    } else {
        $url = sprintf('http://sourceforge.net/projects/swiftmailer/files/SwiftMailer/PHP4%%20%s/%s/download', $download['version'], $download['filename']);
    }

    return new RedirectResponse($url);
})->bind('download_file');

$app->get('/download', function() use ($app) {
    return $app['twig']->render('download.html', array(
        'stableDownload'   => DownloadManager::getCurrentStableDownload($app['db']),
        'unstableDownload' => DownloadManager::getCurrentUnstableDownload($app['db']),
    ));
})->bind('download');

$app->get('/downloads/archive', function() use ($app) {
    return $app['twig']->render('archive.html', array(
        'downloads' => DownloadManager::findAllAvailableDescendingByVersion($app['db']),
    ));
})->bind('archive');

$app->get('/bugs', function() use ($app) {
    return $app['twig']->render('bugs.html');
})->bind('bugs');

$app->get('/docs/{page}', function($page) use ($app) {
    if ('introduction' == $page) {
        $page = 'index.html';
    }

    try {
        return $app['twig']->render('_build/'.$page, array());
    } catch (\Exception $e) {
throw $e;
        throw new NotFoundHttpException('Page not found', $e);
    }
})->bind('doc');

$app->error(function (\Exception $e) use ($app) {
    $error = null;
    if ($e instanceof NotFoundHttpException || in_array($app['request']->server->get('REMOTE_ADDR'), array('127.0.0.1', '::1'))) {
        $error = $e->getMessage();
    }

    return new Response(
        $app['twig']->render('error.html', array('error' => $error)),
        $e instanceof HttpExceptionInterface ? $e->getStatusCode() : 500
    );
});

$app->run();
