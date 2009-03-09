<?php

/**
 * View helper for setting up a form with some default values.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_View_Helpers_FormValue
  implements Zend_View_Helper_Interface
{
  
  /** The values provided by the user from the form */
  private $_values;
  
  /** The encoding to use for the attributes */
  private $_encoding;
  
  /**
   * Create a new form helper with $values.
   * 
   * @param array $values
   * @param string $encoding, optional
   */
  public function __construct($values = array(), $encoding = 'utf-8')
  {
    $this->_values = $values;
    $this->_encoding = $encoding;
  }
  
  /**
   * Get the value of a form field.
   * 
   * @return string
   */
  public function formValue($fieldName)
  {
    return $this->_values[$fieldName];
  }
  
  /**
   * Set the Zend_View instance.
   * 
   * This tries to get the form values from the view.
   * 
   * @param Zend_View_Interface
   */
  public function setView(Zend_View_Interface $view)
  {
    $this->_values = $view->formValues;
    $this->_encoding = $view->formEncoding
      ? $view->formEncoding
      : 'utf-8'
      ;
  }
  
  /**
   * Not currently used.
   */
  public function direct()
  {
  }
  
}
