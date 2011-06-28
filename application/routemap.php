<?php

/*
 swiftmailer.org route map file.
 Adds routes for the front controller.
 */

$router = Zend_Controller_Front::getInstance()->getRouter();
  
$router->addRoute('docs-file', new Zend_Controller_Router_Route(
  '/docs/:topic',
  array('controller'=>'documentation', 'action'=>'load-file')
  ));

$router->addRoute('get-download', new Zend_Controller_Router_Route(
  '/downloads/get/:filename',
  array('controller'=>'download', 'action'=>'download-file')
  ));
