<?php

/*
 swiftmailer.org Index Controller.
 */

/**
 * swiftmailer.org ErrorController.
 * Invoked when an error occurs such as a 404 or an uncaught exception.
 * @author Chris Corbyn
 */
class ErrorController extends Swift_Website_ActionController
{
  
  /** Handles system errors and 404 pages */
  public function errorAction()
  {
    $this->_helper->viewRenderer->setViewSuffix('phtml');
    
    $exception = $this->_getErrors()->exception;
    
    $errorType = ($exception instanceof Swift_Website_PageNotFoundException)
      ? Swift_Website_PageNotFoundException::ERROR_TYPE
      : $this->_getErrors()->type
      ;
    
    switch ($errorType)
    {
      case Zend_Controller_Plugin_ErrorHandler::EXCEPTION_NO_CONTROLLER:
      case Zend_Controller_Plugin_ErrorHandler::EXCEPTION_NO_ACTION:
      case Swift_Website_PageNotFoundException::ERROR_TYPE:
        
        $this->getResponse()->setHttpResponseCode(404);
        $message = 'Page not found';
        $advice = 'If you typed the address in your browser, check ' .
          'for spelling mistakes.  If you clicked a link to get here, please report it to me.';
        break;
      
      default:
        
        $this->getResponse()->setHttpResponseCode(500);
        $message = 'Application error';
        $advice = 'Something isn\'t working correctly.  It\'s my fault, ' .
          'not yours. Please try again later.';
        break;
    }
    
    $this->view->assign(array(
      'title' => $message,
      'message' => $message,
      'advice' => $advice,
      'env' => $this->getInvokeArg('env'),
      'exception' => $exception,
      'request' => $this->_getErrors()->request
    ));
  }
  
  // -- Private methods
  
  private function _getErrors()
  {
    return $this->_getParam('error_handler');
  }
  
}
