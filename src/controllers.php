<?php

use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\RedirectResponse;

$app->get('/', function() use ($app) {
    return $app['twig']->render('index.html');
})->bind('homepage');

$app->get('/download_file/{filename}', function($filename) use ($app) {
    if (!$download = $app['download_manager']->findAvailableByName($filename)) {
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
        'stableDownload'   => $app['download_manager']->getCurrentStableDownload(),
        'unstableDownload' => $app['download_manager']->getCurrentUnstableDownload(),
    ));
})->bind('download');

$app->get('/downloads/archive', function() use ($app) {
    return $app['twig']->render('archive.html', array(
        'downloads' => $app['download_manager']->findAllAvailableDescendingByVersion(),
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
