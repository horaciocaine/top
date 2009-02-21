<?php

/*
 swiftmailer.org bootstrap file.
 Sets up the application ready for dispatching.
 */

defined('SWIFT_APPLICATION_DIR')
  or define('SWIFT_APPLICATION_DIR', realpath(dirname(__FILE__)));
  
defined('SWIFT_ROOT_DIR')
  or define('SWIFT_ROOT_DIR', realpath(dirname(__FILE__) . '/..'));
  
defined('SWIFT_APPLICATION_ENVIRONMENT')
  or define('SWIFT_APPLICATION_ENVIRONMENT', 'production');
  
require_once SWIFT_APPLICATION_DIR . '/routemap.php';
require_once SWIFT_APPLICATION_DIR . '/registry.php';
  
Zend_Controller_Front::getInstance()
  ->setControllerDirectory(SWIFT_APPLICATION_DIR . '/controllers');
  
Zend_Controller_Front::getInstance()
  ->setParam('env', SWIFT_APPLICATION_ENVIRONMENT);
  
Zend_Layout::startMvc(SWIFT_APPLICATION_DIR . '/layouts/scripts');

Zend_Layout::getMvcInstance()->getView()->doctype('XHTML1_STRICT');
