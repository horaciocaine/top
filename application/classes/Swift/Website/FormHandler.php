<?php

/**
 * A basic form handler that is concerned with data, not with markup.
 * 
 * The handler is used as an interceptor between the request and the model.
 * 
 * @author Chris Corbyn
 */
interface Swift_Website_FormHandler
{
  
  /** Method constant for POST data */
  const METHOD_POST = 'post';
  
  /** Method constant for GET data */
  const METHOD_GET = 'GET';
  
  //Add later: public function addFilter($field, Swift_Form_ValueFilter $filter);
  
  /**
   * Returns true if the form has been submitted by the user.
   * 
   * @return boolean
   */
  public function isSubmitted();
  
  /**
   * Returns true if the form has been cancelled by the user.
   * 
   * @return boolean
   */
  public function isCancelled();
  
  /**
   * Get the values that were submitted (or inferred) from the form.
   * 
   * @return array
   */
  public function getValues();
  
}
