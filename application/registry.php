<?php

/*
 swiftmailer.org registry configuration.
 */

Zend_Registry::getInstance()->set(
  'config',
  new Zend_Config_Ini(
    SWIFT_APPLICATION_DIR . '/config/app.ini', 
    SWIFT_APPLICATION_ENVIRONMENT
  )
);
