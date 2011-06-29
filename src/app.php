<?php

use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Silex\Application;
use Silex\Extension\TwigExtension;
use Silex\Extension\UrlGeneratorExtension;
use Silex\Extension\SymfonyBridgesExtension;
use Silex\Extension\DoctrineExtension;

require_once __DIR__.'/autoload.php';
require_once __DIR__.'/models.php';

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
    $twig->addExtension(new SwiftmailerTwigExtension($app));
    $twig->addGlobal('currentDownload', $app['download_manager']->getCurrentStableDownload());
});

class SwiftmailerTwigExtension extends \Twig_Extension
{
    protected $app;

    public function __construct($app)
    {
        $this->app = $app;
    }

    public function getFunctions()
    {
        return array(
            'download_path' => new Twig_Function_Method($this, 'getDownloadPath'),
        );
    }

    public function getDownloadPath($filename)
    {
        
    }

    public function getName()
    {
        return 'swiftmailer';
    }
}

$app['download_manager'] = function ($app) {
    return new DownloadManager($app['db']);
};

return $app;
