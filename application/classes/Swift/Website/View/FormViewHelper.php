<?php

/**
 * View helper for setting up a form with some default values.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_View_FormViewHelper
{
  
  /** The values provided by the user from the form */
  private $_values;
  
  /** The encoding to use for the attributes */
  private $_encoding;
  
  /**
   * Create a new FormViewHelper for the $values from the form.
   * 
   * @param array $values
   * @param string $encoding defaults to UTF-8
   */
  public function __construct(array $values, $encoding = 'UTF-8')
  {
    $this->_values = (array) $values;
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
   * Get the value of the data from $fieldName.
   * 
   * If no $fieldName is found in the data, the standard E_NOTICE will be raised.
   * 
   * @param string $fieldName
   * 
   * @return mixed
   */
  public function formValue($fieldName)
  {
    return $this->_values[$fieldName];
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
