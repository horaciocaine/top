<?php

require_once dirname(__FILE__) . '/../console.php';

$dbConfig = Zend_Registry::getInstance()->get('dbconfig');

printf("Setting up database %s", PHP_EOL);
printf("Using DSN [%s] %s", $dbConfig->get('db_dsn'), PHP_EOL);

Doctrine::createTablesFromModels(SWIFT_MODEL_DIR);

printf("Creating admin user with password 'everest' %s", PHP_EOL);

$user = new User();
$user->setUsername('admin');
$user->setPassword('everest');
$user->setTimeCreated(time());
$user->save();

printf("All done %s", PHP_EOL);
