<?php

/*
 swiftmailer.org bootstrap file.
 Sets up the application ready for dispatching.
 */

defined('SWIFT_APPLICATION_DIR')
  or define('SWIFT_APPLICATION_DIR', realpath(dirname(__FILE__)));
  
define('SWIFT_ROOT_DIR', realpath(SWIFT_APPLICATION_DIR . '/..'));
  
define('SWIFT_MODEL_DIR', SWIFT_APPLICATION_DIR . '/models');

define('SWIFT_EXTERNALS_DIR', SWIFT_ROOT_DIR . '/externals');

$env = new Zend_Config_Ini(
  SWIFT_APPLICATION_DIR . '/config/environment.ini'
);

define('SWIFT_APPLICATION_ENVIRONMENT', $env->get('environment'));

Zend_Registry::getInstance()->set(
  'config',
  new Zend_Config_Ini(
    SWIFT_APPLICATION_DIR . '/config/app.ini', 
    SWIFT_APPLICATION_ENVIRONMENT
  )
);
  
require_once SWIFT_APPLICATION_DIR . '/routemap.php';
require_once SWIFT_APPLICATION_DIR . '/doctrine.php';

Zend_Controller_Front::getInstance()
  ->setControllerDirectory(SWIFT_APPLICATION_DIR . '/controllers');
  
Zend_Controller_Front::getInstance()
  ->setParam('env', SWIFT_APPLICATION_ENVIRONMENT);
  
Zend_Layout::startMvc(SWIFT_APPLICATION_DIR . '/layouts/scripts');

Zend_Layout::getMvcInstance()->getView()->doctype('XHTML1_STRICT');

unset($env);
