<?php

/**
 * A validation rule for email addresses.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_Validation_Rules_EmailRule
  extends Swift_Website_Validation_Rules_PatternRule
{
  
  /**
   * Create a new EmailRule for $field and $pattern.
   * 
   * @param string $field
   * @param string $fieldName
   * @param string $error
   */
  public function __construct($field, $fieldName = null, $error = '%s')
  {
    //There's really little point in checking more thoroughly
    parent::__construct($field, '~^[^@]+@[^@]+$~D', $fieldName, $error);
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
      sprintf($this->_error, '{field} is not a valid e-mail address')
    );
  }
  
}
