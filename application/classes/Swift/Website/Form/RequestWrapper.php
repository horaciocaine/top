<?php

/**
 * Adaptor component for providing information about the request to
 * {@link Swift_Website_FormHandler}.
 * 
 * @author Chris Corbyn
 */
interface Swift_Website_Form_RequestWrapper
{
  
  /**
   * Get the HTTP request method used.
   * 
   * @return string
   */
  public function getRequestMethod();
  
  /**
   * Get the values from the request.
   * 
   * @return array
   */
  public function getParams();
  
}
