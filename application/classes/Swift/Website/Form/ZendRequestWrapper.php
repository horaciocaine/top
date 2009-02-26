<?php

/**
 * Adaptor component for providing information about the request to
 * {@link Swift_Website_FormHandler}.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_Form_ZendRequestWrapper
  implements Swift_Website_Form_RequestWrapper
{
  
  /** The request object itself */
  private $_request;
  
  /**
   * Create a new ZendRequestWrapper with $request.
   * 
   * @param Zend_Controller_Request_Http $request
   */
  public function __construct(Zend_Controller_Request_Http $request)
  {
    $this->_request = $request;
  }
  
  /**
   * Get the HTTP request method used.
   * 
   * @return string
   */
  public function getRequestMethod()
  {
    return $this->_request->getMethod();
  }
  
  /**
   * Get the values from the request.
   * 
   * @return array
   */
  public function getParams()
  {
    return $this->_request->getParams();
  }
  
}
