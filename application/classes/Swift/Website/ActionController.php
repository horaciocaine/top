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
  
  // -- Protected Methods
  
  protected function _getForm($fields = array(), $defaultValues = array(),
    $options = array())
  {
    return new Swift_Website_SimpleFormHandler(
      new Swift_Website_Form_ZendRequestWrapper($this->getRequest()),
      $fields, $defaultValues, $options
    );
  }
  
  protected function _getValidator($rules = array())
  {
    $validator = new Swift_Website_SimpleValidator();
    foreach ($rules as $rule)
    {
      $validator->addRule($rule);
    }
    return $validator;
  }
  
}