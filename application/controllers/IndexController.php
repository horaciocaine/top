<?php

/*
 swiftmailer.org Index Controller.
 */

/**
 * swiftmailer.org IndexController.
 * Provides controller log for the front page.
 * @author Chris Corbyn
 */
class IndexController extends Zend_Controller_Action
{
  
  /** The home page */
  public function indexAction()
  {
    $this->view->assign(array(
      'title' => 'Powerful component based mailing library for PHP'
    ));
  }
  
}
