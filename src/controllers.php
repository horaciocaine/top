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

    if ('github' == $download->source) {
        $url = sprintf('http://cloud.github.com/downloads/swiftmailer/swiftmailer/%s', $download->filename);
    } else {
        $url = sprintf('http://sourceforge.net/projects/swiftmailer/files/SwiftMailer/PHP4%%20%s/%s/download', $download->version, $download->filename);
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

$app->get('/docs', function() use ($app) {
    return new RedirectResponse('/docs/introduction');
});

$app->get('/docs/{page}', function($page) use ($app) {
    if (!preg_match('/\.html$/', $page)) {
        return new RedirectResponse('/docs/'.$page.'.html');
    }

    try {
        return $app['twig']->render('_build/'.$page, array());
    } catch (\Exception $e) {
        return new RedirectResponse('/docs/index.html');
    }
})->bind('doc');

$app->error(function (\Exception $e, $code) use ($app) {
    if ($app['debug']) {
        return;
    }

    return new Response($app['twig']->render('error.html', array('code' => $code)), $code);
});
