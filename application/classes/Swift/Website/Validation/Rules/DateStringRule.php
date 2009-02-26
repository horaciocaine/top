<?php

/**
 * Checks if a string can be parsed by strtotime().
 * 
 * @author Chris Corbyn
 */
class Swift_Website_Validation_Rules_DateStringRule
  implements Swift_Website_Validation_Rule
{
  
  /** The error message */
  private $_error;
  
  /** The field to check */
  private $_field;
  
  /** The field name shown to the user (rather than the request data name) */
  private $_fieldName;
  
  /**
   * Create a new DateStringRule for $field.
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
    return !array_key_exists($this->_field, $requestParams)
      || $requestParams[$this->_field] === ''
      || strtotime($requestParams[$this->_field]) !== false
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
      sprintf($this->_error, '{field} is not recognized as a valid date')
    );
  }
  
}
