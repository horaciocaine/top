<?php

/*
 swiftmailer.org doctrine configuration.
 */

set_include_path(
  get_include_path() .
  PATH_SEPARATOR . SWIFT_EXTERNALS_DIR . '/doctrine/lib'
);

require_once SWIFT_EXTERNALS_DIR . '/doctrine/lib/Doctrine.php';
