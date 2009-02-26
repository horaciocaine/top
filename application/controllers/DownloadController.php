<?php

/*
 swiftmailer.org Download Controller.
 */

/**
 * swiftmailer.org DownloadController.
 * 
 * Finds the downloads that are listed on github and presents them.
 * 
 * @author Chris Corbyn
 */
class DownloadController extends Swift_Website_ActionController
{
  
  /** The download page */
  public function indexAction()
  {
    $this->view->assign(array(
      'title' => 'Downloads'
    ));
    
    $db = Zend_Registry::getInstance()->get('db')->getCurrentConnection();
  }
  
  /** Show all downloads available */
  public function downloadArchiveAction()
  {
  }
  
  /** Download a specific file */
  public function downloadFile()
  {
  }
  
}
