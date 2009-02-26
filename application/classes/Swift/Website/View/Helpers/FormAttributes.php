<?php

/**
 * View helper for setting up a form with some default values.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_View_Helpers_FormAttributes
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
   * Generate form attributes that indicate that the user has input.
   * 
   * This will return attributes based on the $element type that will include
   * any of "name", "value", "selected" or "checked" and no more.
   * 
   * If the $fieldName is not in the form data an E_NOTICE will be raised.
   * 
   * @param string $element as a type from one of:
   *               input    or input.text,
   *               input    or input.password,
   *               radio    or input.radio,
   *               checkbox or input.checkbox
   *               option
   * @param string $fieldName
   * @param string $value, optional
   * 
   * @return string
   */
  public function formAttributes($element, $fieldName, $value = null)
  {
    switch ($element)
    {
      case 'input':
      case 'input.text':
      case 'input.password':
        return $this->_getTextInputAttributes($fieldName);
        
      case 'radio':
      case 'input.radio':
      case 'checkbox':
      case 'input.checkbox':
        return $this->_getCheckboxAttributes($fieldName, $value);
        
      case 'option':
        return $this->_getSelectOptionAttributes($fieldName, $value);
      
      default:
        throw new Swift_WebsiteException('Invalid element type specified');
    }
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
  
  // -- Private Methods
  
  private function _getTextInputAttributes($fieldName)
  {
    return sprintf(
      'name="%s" value="%s"',
      htmlspecialchars($fieldName, ENT_QUOTES, $this->_encoding),
      htmlspecialchars($this->_values[$fieldName], ENT_QUOTES, $this->_encoding)
    );
  }
  
  private function _getCheckboxAttributes($fieldName, $value)
  {
    $attributes = sprintf(
      'name="%s" value="%s"',
      htmlspecialchars($fieldName, ENT_QUOTES, $this->_encoding),
      htmlspecialchars($value, ENT_QUOTES, $this->_encoding)
    );
    if (in_array($value, (array) $this->_values[$fieldName]))
    {
      $attributes .= ' checked="checked"';
    }
    return $attributes;
  }
  
  private function _getSelectOptionAttributes($fieldName, $value)
  {
    $attributes = sprintf(
      'value="%s"',
      htmlspecialchars($value, ENT_QUOTES, $this->_encoding)
    );
    if (in_array($value, (array) $this->_values[$fieldName]))
    {
      $attributes .= ' selected="selected"';
    }
    return $attributes;
  }
  
}
