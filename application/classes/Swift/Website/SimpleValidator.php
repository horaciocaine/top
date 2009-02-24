<?php

/**
 * Basic implementation of {@link Swift_Website_Validator}.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_SimpleValidator implements Swift_Website_Validator
{
  
  /** Validation rules */
  private $_rules = array();
  
  /** Validation errors */
  private $_errors = array();
  
  /**
   * Add a new validation rule to this validator.
   * 
   * @param Swift_Website_Validation_Rule $rule
   */
  public function addRule(Swift_Website_Validation_Rule $rule)
  {
    $this->_rules[] = $rule;
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
    $valid  = true;
    foreach ($this->_rules as $rule)
    {
      if (!$rule->isValid($requestParams))
      {
        $valid = false;
        $this->_errors[] = $rule->getError();
      }
    }
    return $valid;
  }
  
  /**
   * Get an array of validation errors.
   * 
   * @return array
   */
  public function getValidationErrors()
  {
    return $this->_errors;
  }
  
}
