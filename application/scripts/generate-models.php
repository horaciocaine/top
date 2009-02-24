<?php

require_once dirname(__FILE__) . '/../console.php';

$config = Zend_Registry::getInstance()->get('config');

printf("Generating models from yaml schema [%s] %s", $config->get('schema_file'), PHP_EOL);

Doctrine::generateModelsFromYaml(
  SWIFT_ROOT_DIR . '/' . $config->get('schema_file'),
  SWIFT_MODEL_DIR,
  array('generateTableClasses' => true)
);

printf("All done %s", PHP_EOL);
