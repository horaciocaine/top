<?php

require_once __DIR__.'/../vendor/silex/vendor/Symfony/Component/ClassLoader/UniversalClassLoader.php';

use Symfony\Component\ClassLoader\UniversalClassLoader;

$loader = new UniversalClassLoader();
$loader->registerNamespaces(array(
    'Symfony\\Bridge'  => __DIR__.'/../vendor',
    'Symfony'          => array(__DIR__.'/../vendor/silex/vendor', __DIR__.'/../vendor'),
    'Silex'            => __DIR__.'/../vendor/silex/src',
    'Doctrine\\DBAL'   => __DIR__.'/../vendor/doctrine-dbal/lib',
    'Doctrine\\Common' => __DIR__.'/../vendor/doctrine-common/lib',
));
$loader->registerPrefixes(array(
    'Pimple' => __DIR__.'/../vendor/silex/vendor/pimple/lib',
    'Twig_'  => __DIR__.'/../vendor/twig/lib',
));
$loader->register();
