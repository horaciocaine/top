<?php

/**
 * An individual rule in the {@link Swift_Website_Validator}.
 * 
 * @author Chris Corbyn
 */
interface Swift_Website_Validation_Rule
{
  
  /**
   * Return true if the data is valid, or false otherwise.
   * 
   * @param array $requestParams
   * 
   * @return boolean
   */
  public function isValid($requestParams);
  
  /**
   * Get the error if the data is not valid.
   * 
   * @return string
   */
  public function getError();
  
}
