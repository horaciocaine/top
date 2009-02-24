<?php

/*
 swiftmailer.org doctrine configuration.
 */

set_include_path(
  get_include_path() .
  PATH_SEPARATOR . SWIFT_EXTERNALS_DIR . '/doctrine/lib'
);

require_once SWIFT_EXTERNALS_DIR . '/doctrine/lib/Doctrine.php';

Zend_Registry::getInstance()->set(
  'dbconfig',
  new Zend_Config_Ini(
    SWIFT_APPLICATION_DIR . '/config/db.ini',
    SWIFT_APPLICATION_ENVIRONMENT
  )
);

Doctrine_Manager::connection(
  Zend_Registry::getInstance()->get('dbconfig')->get('db_dsn')
);

Doctrine_Manager::getInstance()->setAttribute(
  Doctrine::ATTR_EXPORT, Doctrine::EXPORT_ALL
);

Doctrine_Manager::getInstance()->setAttribute(
  Doctrine::ATTR_MODEL_LOADING, Doctrine::MODEL_LOADING_CONSERVATIVE
);

Doctrine::loadModels(SWIFT_MODEL_DIR);

Zend_Registry::getInstance()->set('db', Doctrine_Manager::getInstance());

//Doctrine::loadModels(SWIFT_APPLICATION_DIR . '/models');
