<?php

/*
 swiftmailer.org dev index file.
 Takes requests for the application, in dev mode.
 */

define('SWIFT_APPLICATION_DIR',
  realpath(dirname(__FILE__) . '/../application')
  );

define('SWIFT_APPLICATION_ENVIRONMENT', 'development');

set_include_path(
  SWIFT_APPLICATION_DIR . '/../library' .
  PATH_SEPARATOR . SWIFT_APPLICATION_DIR . '/classes' .
  PATH_SEPARATOR . SWIFT_APPLICATION_DIR . '/layouts/scripts' .
  PATH_SEPARATOR . SWIFT_APPLICATION_DIR . '/views/scripts' .
  PATH_SEPARATOR . get_include_path()
  );

require_once "Zend/Loader.php";

Zend_Loader::registerAutoload();

try
{
  require SWIFT_APPLICATION_DIR . '/bootstrap.php';
}
catch (Exception $e)
{
  echo "An error occurred: " . $e->getMessage();
  exit(1);
}

Zend_Controller_Front::getInstance()->dispatch();
