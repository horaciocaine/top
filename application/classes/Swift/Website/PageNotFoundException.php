<?php

/**
 * Thrown to force a 404 error page on swiftmailer.org.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_PageNotFoundException extends Swift_WebsiteException
{
  
  /** Error type associated with this Exception for {@link Zend_Controller_Plugin_ErrorHandler} */
  const ERROR_TYPE = 'EXCEPTION_NO_CONTROLLER_OR_ACTION';
  
}
