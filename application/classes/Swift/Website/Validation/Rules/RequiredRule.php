<?php

/**
 * A basic validation rule to require that a field is filled out.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_Validation_Rules_RequiredRule
  implements Swift_Website_Validation_Rule
{
  
  /** The error message */
  private $_error;
  
  /** The field to check */
  private $_field;
  
  /** The field name shown to the user (rather than the request data name) */
  private $_fieldName;
  
  /**
   * Create a new RequiredRule for $field.
   * 
   * @param string $field
   * @param string $fieldName
   * @param string $error
   */
  public function __construct($field, $fieldName = null, $error = '%s')
  {
    $this->_error = $error;
    $this->_field = $field;
    $this->_fieldName = $fieldName;
  }
  
  /**
   * Return true if the data is valid, or false otherwise.
   * 
   * @param array $requestParams
   * 
   * @return boolean
   */
  public function isValid($requestParams)
  {
    return array_key_exists($this->_field, $requestParams)
      && $requestParams[$this->_field] !== ''
      && $requestParams[$this->_field] !== array()
      ;
  }
  
  /**
   * Get the error if the data is not valid.
   * 
   * @return string
   */
  public function getError()
  {
    $fieldName = $this->_fieldName
      ? $this->_fieldName
      : $this->_field
      ;
    
    return str_replace(
      '{field}',
      $fieldName,
      sprintf($this->_error, '{field} must be filled in')
    );
  }
  
}
