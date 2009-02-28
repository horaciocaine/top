<?php

/*
 swiftmailer.org Bug Controller.
 */

/**
 * swiftmailer.org BugController.
 * 
 * Landing page for users regarding the use of LightHouse.
 * 
 * @author Chris Corbyn
 */
class BugController extends Swift_Website_ActionController
{
  
  /** The bugs page */
  public function indexAction()
  {
    $config = Zend_Registry::getInstance()->get('config');
    
    $this->view->assign(array(
      'title' => 'Reporting Bugs',
      'lighthouseUrl' => $config->get('lighthouse_page'),
      'googleGroupName' => $config->get('google_group_name'),
      'googleGroupUrl' => $config->get('google_group_page'),
      'forumUrl' => $config->get('devnetwork_forum_page')
    ));
  }
  
}
