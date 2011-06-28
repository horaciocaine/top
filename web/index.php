<?php

use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\HttpFoundation\Response;
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
    'twig.path'       => array(__DIR__.'/../templates', __DIR__.'/../sphinx'),
    'twig.options'    => array('cache' => __DIR__.'/../cache', 'debug' => true, 'strict_variables' => true),
));
$app->register(new DoctrineExtension(), array(
    'db.options' => array(
        'driver'   => 'pdo_mysql',
        'dbname'   => 'swiftmailer',
        'host'     => 'localhost',
        'user'     => 'root',
        'password' => null,
    )
));

class Download
{
    protected $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

//    return $this->db->fetchColumn('SELECT COUNT(*) FROM '.$this->db->quoteIdentifier($table), array(), 0);

    public function getCurrentStableDownload()
    {
        $sql = 'SELECT *
            FROM dctrn_find
            WHERE revoked != 1 AND stable = 1
            ORDER BY version_number DESC, time_created DESC
            LIMIT 1
        ';

        return $this->db->query();
    }

    public function getCount($table)
    {
        return $this->db->fetchColumn('SELECT COUNT(*) FROM '.$this->db->quoteIdentifier($table), array(), 0);
    }
}

// Application
$app->get('/', function() use ($app) {
    return $app['twig']->render('index.html', array('page' => 'index'));
})->bind('homepage');

$app->get('/download', function() use ($app) {
    return $app['twig']->render('download.html');
})->bind('download');

$app->get('/downloads/archive', function() use ($app) {
    return $app['twig']->render('archive.html');
})->bind('archive');

$app->get('/bugs', function() use ($app) {
    return $app['twig']->render('bugs.html');
})->bind('bugs');

$app->get('/{page}', function($page) use ($app) {
    try {
        return $app['twig']->render($page.'.html', array('page' => $page));
    } catch (\Exception $e) {
        throw new NotFoundHttpException('Page not found', $e);
    }
})->bind('page')->assert('page', '[a-zA-Z\/\-0-9]+');

$app->get('/doc/{page}.html', function($page) use ($app) {
    try {
        return $app['twig']->render('_build/'.$page.'.html', array('page' => 'documentation'));
    } catch (\Exception $e) {
        throw new NotFoundHttpException('Page not found', $e);
    }
})->bind('doc')->assert('page', '[a-zA-Z\/\-0-9_]+');

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
