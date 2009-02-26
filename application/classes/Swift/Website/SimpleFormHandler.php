<?php

/**
 * Simple implementation for {@link Swift_Website_FormHandler}.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_SimpleFormHandler implements Swift_Website_FormHandler
{
  
  /** The request wrapper */
  private $_request;
  
  /** Field names to pay attention to */
  private $_fieldNames;
  
  /** Default values for certain fields if form value is not submitted */
  private $_defaultValues;
  
  /** Modifier options */
  private $_options;
  
  /**
   * Create a new FormHandler that processes $request.
   * 
   * @param Swift_Website_Form_RequestWrapper $request
   * @param array $fieldNames that will be processed
   * @param array $defaultValues as an associative array
   * @param array $options can include submit_field => fieldname and
   *              cancel_field => fieldname
   */
  public function __construct(Swift_Website_Form_RequestWrapper $request,
    $fieldNames = array(), $defaultValues = array(), $options = array())
  {
    $this->_request = $request;
    $this->_fieldNames = (array) $fieldNames;
    $this->_defaultValues = (array) $defaultValues;
    $this->_options = (array) $options;
  }
  
  /**
   * Returns true if the form has been submitted by the user.
   * 
   * @return boolean
   */
  public function isSubmitted()
  {
    $requiredRequestMethod = self::METHOD_POST;
    $requiredFieldsPassed = true;
    
    if (isset($this->_options['submit_field']))
    {
      $params = $this->_request->getParams();
      $requiredFieldsPassed = !empty($params[$this->_options['submit_field']]);
    }
    
    if (isset($this->_options['method']))
    {
      $requiredRequestMethod = strtolower($this->_options['method']);
    }
    
    return ($requiredFieldsPassed
      && strtolower($this->_request->getRequestMethod()) == $requiredRequestMethod);
  }
  
  /**
   * Returns true if the form has been cancelled by the user.
   * 
   * @return boolean
   */
  public function isCancelled()
  {
    if (isset($this->_options['cancel_field']))
    {
      $params = $this->_request->getParams();
      return !empty($params[$this->_options['cancel_field']]);
    }
    
    return false;
  }
  
  /**
   * Get the form values as interpreted by the form handler.
   * 
   * @return array
   */
  public function getValues()
  {
    $values = array();
    foreach ($this->_fieldNames as $name)
    {
      $values[$name] = $this->_getFormValue($name);
    }
    return $values;
  }
  
  // -- Private Methods
  
  private function _getFormValue($name)
  {
    if ($this->isSubmitted())
    {
      $params = $this->_request->getParams();
      $value = isset($params[$name])
        ? $params[$name]
        : null
        ;
    }
    else
    {
      $value = $this->_getDefaultValue($name);
    }
    
    return $value;
  }
  
  private function _getDefaultValue($name)
  {
    return isset($this->_defaultValues[$name])
      ? $this->_defaultValues[$name]
      : null
      ;
  }
  
}
