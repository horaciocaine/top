<?php

use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Silex\Application;
use Silex\Extension\TwigExtension;
use Silex\Extension\UrlGeneratorExtension;
use Silex\Extension\SymfonyBridgesExtension;
use Silex\Extension\DoctrineExtension;

require_once __DIR__.'/models.php';

$app = new Application();
$app->register(new SymfonyBridgesExtension());
$app->register(new UrlGeneratorExtension());
$app->register(new TwigExtension(), array(
    'twig.path'    => array(__DIR__.'/../templates', __DIR__.'/../sphinx'),
    'twig.options' => array('cache' => __DIR__.'/../cache', 'debug' => true, 'strict_variables' => true),
));
$app->register(new DoctrineExtension());
$app['twig.configure'] = $app->protect(function ($twig) use ($app) {
    $twig->addGlobal('currentDownload', $app['download_manager']->getCurrentStableDownload());
});

$app['download_manager'] = function ($app) {
    return new DownloadManager($app['db']);
};

return $app;
