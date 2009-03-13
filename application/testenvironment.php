<?php

/*
 swiftmailer.org test environment file.
 Sets up the environment for testing.
 Basically the same as a production environment but without implicit dispatching.
 */

define('SWIFT_APPLICATION_DIR',
  realpath(dirname(__FILE__))
  );

set_include_path(
  SWIFT_APPLICATION_DIR . '/../library' .
  PATH_SEPARATOR . SWIFT_APPLICATION_DIR . '/classes' .
  PATH_SEPARATOR . SWIFT_APPLICATION_DIR . '/controllers' .
  PATH_SEPARATOR . SWIFT_APPLICATION_DIR . '/layouts/scripts' .
  PATH_SEPARATOR . SWIFT_APPLICATION_DIR . '/views/scripts' .
  PATH_SEPARATOR . SWIFT_APPLICATION_DIR . '/../externals/swiftmailer/lib/classes' .
  PATH_SEPARATOR . SWIFT_APPLICATION_DIR . '/../tests/helpers' .
  PATH_SEPARATOR . SWIFT_APPLICATION_DIR . '/../tests/unit' .
  PATH_SEPARATOR . SWIFT_APPLICATION_DIR . '/../tests/system' .
  PATH_SEPARATOR . get_include_path()
  );

require_once "Zend/Loader.php";

Zend_Loader::registerAutoload();

//Don't try/catch for bootstrap errors in test environment
require SWIFT_APPLICATION_DIR . '/bootstrap.php';

//Don't dispatch() FrontController in test environment
