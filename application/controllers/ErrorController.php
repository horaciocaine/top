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
    switch ($this->_getErrors()->type)
    {
      case Zend_Controller_Plugin_ErrorHandler::EXCEPTION_NO_CONTROLLER:
      case Zend_Controller_Plugin_ErrorHandler::EXCEPTION_NO_ACTION:
        
        $this->getResponse()->setHttpResponseCode(404);
        $this->view->message = 'Page not found';
        $this->view->advice = 'If you typed the address in your browser, check ' .
          'for spelling mistakes.  If you clicked a link to get here, please report it to me.';
        break;
      
      default:
        
        $this->getResponse()->setHttpResponseCode(500);
        $this->view->message = 'Application error';
        $this->view->advice = 'Something isn\'t working correctly.  It\'s my fault, ' .
          'not yours. Please try again later.';
        break;
    }
    
    $this->view->title = $this->view->message;
    $this->view->blurb = 'sometimes even computers make mistakes.';
    $this->view->env = $this->getInvokeArg('env');
    $this->view->exception = $this->_getErrors()->exception;
    $this->view->request = $this->_getErrors()->request;
  }
  
  // -- Private methods
  
  private function _getErrors()
  {
    return $this->_getParam('error_handler');
  }
  
}
