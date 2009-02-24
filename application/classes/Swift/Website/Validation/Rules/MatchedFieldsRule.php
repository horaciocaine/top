<?php

/**
 * A validation rule to checks multiple fields match in value (such as
 * password and confirm password).
 * 
 * @author Chris Corbyn
 */
class Swift_Website_Validation_Rules_MatchedFieldsRule
  implements Swift_Website_Validation_Rule
{
  
  /** The error message */
  private $_error;
  
  /** The fields to compare */
  private $_fields = array();
  
  /** The field name shown to the user (rather than the request data name) */
  private $_fieldName;
  
  /**
   * Create a new MatchedFieldsRule for $fields.
   * 
   * @param array $fields
   * @param string $fieldName
   * @param string $error
   */
  public function __construct(array $fields, $fieldName = null, $error = '%s')
  {
    $this->_error = $error;
    $this->_fields = $fields;
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
    $toCompare = array();
    //Check all fields exist
    foreach ($this->_fields as $field)
    {
      if (array_key_exists($field, $requestParams))
      {
        $toCompare[] = $requestParams[$field];
      }
    }
    
    //If all fields are not present
    if (count($toCompare) > 0 && count($toCompare) != count($this->_fields))
    {
      return false;
    }
    
    $lastValue = current($toCompare);
    foreach ($toCompare as $value)
    {
      if ($value !== $lastValue)
      {
        return false;
      }
      $lastValue = $value;
    }
    
    return true;
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
      : implode(' and ', $this->_fields)
      ;
    
    return str_replace(
      '{field}',
      $fieldName,
      sprintf($this->_error, '{field} must match')
    );
  }
  
}
