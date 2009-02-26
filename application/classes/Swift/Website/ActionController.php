<?php

/**
 * Base ActionController that all controllers descend from.
 * 
 * This class simply decorates Zend_Controller_Action to add some view helpers.
 * 
 * @author Chris Corbyn
 */
abstract class Swift_Website_ActionController extends Zend_Controller_Action
{
  
  /**
   * Runs before the action is dispatched.
   * 
   * In this case it simply adds some swift-specific view helper paths.
   */
  public function preDispatch()
  {
    parent::preDispatch();
    
    $config = Zend_Registry::getInstance()->get('config');
    $this->view->addHelperPath(
      SWIFT_APPLICATION_DIR . '/classes/' . $config->get('view_helper_path'),
      str_replace('/', '_', $config->get('view_helper_path'))
      );
  }
  
}
