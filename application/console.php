<?php

/*
 swiftmailer.org test environment file.
 Sets up the environment for testing.
 Basically the same as a production environment but without implicit dispatching.
 */

define('SWIFT_APPLICATION_DIR', realpath(dirname(__FILE__)));

set_include_path(
  SWIFT_APPLICATION_DIR . '/../library' .
  PATH_SEPARATOR . SWIFT_APPLICATION_DIR . '/classes' .
  PATH_SEPARATOR . get_include_path()
  );

require_once "Zend/Loader.php";

Zend_Loader::registerAutoload();

//Don't try/catch for bootstrap errors in test environment
require SWIFT_APPLICATION_DIR . '/bootstrap.php';
