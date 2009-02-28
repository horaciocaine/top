<?php

/*
 swiftmailer.org route map file.
 Adds routes for the front controller.
 */

$router = Zend_Controller_Front::getInstance()->getRouter();
  
$router->addRoute('docs', new Zend_Controller_Router_Route(
  '/docs',
  array('controller'=>'documentation', 'action'=>'index')
  ));

$router->addRoute('docs-file', new Zend_Controller_Router_Route(
  '/docs/:topic',
  array('controller'=>'documentation', 'action'=>'load-file')
  ));

$router->addRoute('get-download', new Zend_Controller_Router_Route(
  '/downloads/get/:filename',
  array('controller'=>'download', 'action'=>'download-file')
  ));
  
$router->addRoute('download-archive', new Zend_Controller_Router_Route(
  '/downloads/archive',
  array('controller'=>'download', 'action'=>'archive')
  ));
  
$router->addRoute('edit-download', new Zend_Controller_Router_Route(
  '/admin/download-manager/edit/:downloadid',
  array('controller'=>'admin', 'action'=>'edit-download')
  ));

$router->addRoute('bugs', new Zend_Controller_Router_Route(
  '/bugs',
  array('controller'=>'bug', 'action'=>'index')
  ));

unset($router);
