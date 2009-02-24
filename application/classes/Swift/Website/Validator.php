<?php

/**
 * Very basic interface for validating request data.
 * 
 * @author Chris Corbyn
 */
interface Swift_Website_Validator
{
  
  /**
   * Add a new validation rule to this validator.
   * 
   * @param Swift_Website_Validation_Rule $rule
   */
  public function addRule(Swift_Website_Validation_Rule $rule);
  
  /**
   * Return true if the data is valid, or false otherwise.
   * 
   * @param array $requestParams
   * 
   * @return boolean
   */
  public function isValid($requestParams);
  
  /**
   * Add an error to the list of errors.
   * 
   * @param string $error
   */
  public function addValidationError($error);
  
  /**
   * Get an array of validation errors.
   * 
   * @return array
   */
  public function getValidationErrors();
  
}
