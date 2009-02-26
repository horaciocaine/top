<?php

/**
 * A basic validation rule to require that a field is one of a fixed set of values.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_Validation_Rules_EnumRule
  implements Swift_Website_Validation_Rule
{
  
  /** The error message */
  private $_error;
  
  /** Permitted values to submit */
  private $_allowedValues;
  
  /** The field to check */
  private $_field;
  
  /** The field name shown to the user (rather than the request data name) */
  private $_fieldName;
  
  /**
   * Create a new EnumRule for $field with $allowedValues.
   * 
   * @param string $field
   * @param array $allowedValues
   * @param string $fieldName
   * @param string $error
   */
  public function __construct($field, array $allowedValues, $fieldName = null,
    $error = '%s')
  {
    $this->_allowedValues = $allowedValues;
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
      || $requestParams[$this->_field] === array()
      || in_array($requestParams[$this->_field], $this->_allowedValues)
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
      sprintf(
        $this->_error,
        sprintf('{field} must be one of %s', implode(', ', $this->_allowedValues))
      )
    );
  }
  
}
