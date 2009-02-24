<?php

/*
 swiftmailer.org Admin Controller.
 */

/**
 * swiftmailer.org AdminController.
 * 
 * Allows administration of the swiftmailer.org site.
 * 
 * @author Chris Corbyn
 */
class AdminController extends Zend_Controller_Action
{
  
  /** The download page */
  public function indexAction()
  {
    if (!$this->_getAuthenticator()->hasIdentity())
    {
      return $this->_redirectToLoginPage();
    }
    
    $this->view->assign(array(
      'title' => 'Admin Panel'
    ));
  }
  
  /** Require login */
  public function loginAction()
  {
    if ($this->_getAuthenticator()->hasIdentity())
    {
      return $this->_redirectToAdminIndex();
    }
    
    if ($this->getRequest()->get('cancel'))
    {
      return $this->_redirectToHomePage();
    }
    
    $this->view->assign(array(
      'title' => 'Login'
    ));
    
    $validator = new Swift_Website_SimpleValidator();
    $validator->addRule(new Swift_Website_Validation_Rules_RequiredRule(
      'username', 'Username'
    ));
    $validator->addRule(new Swift_Website_Validation_Rules_RequiredRule(
      'password', 'Password'
    ));
    
    if ($this->getRequest()->isPost())
    {
      if (!$validator->isValid($this->getRequest()->getParams()))
      {
        $this->view->assign(array(
          'validationErrors' => $validator->getValidationErrors()
        ));
        return;
      }
      
      $result = $this->_authenticate(
        $this->getRequest()->get('username'),
        $this->getRequest()->get('password')
      );
      
      if (!$result->isValid())
      {
        $validator->addValidationError('Incorrect username or password');
        $this->view->assign(array(
          'validationErrors' => $validator->getValidationErrors()
        ));
        return;
      }
      
      return $this->_redirectToAdminIndex();
    }
  }
  
  /** End login session */
  public function logoutAction()
  {
    Zend_Auth::getInstance()->clearIdentity();
    return $this->_redirectToLoginPage();
  }
  
  // -- Private Methods
  
  private function _authenticate($username, $password)
  {
    return Zend_Auth::getInstance()->authenticate(
      new Swift_Website_AuthAdapter($username, $password)
    );
  }
  
  private function _getAuthenticator()
  {
    return Zend_Auth::getInstance();
  }
  
  private function _redirectToAdminIndex()
  {
    return $this->_helper->getHelper('Redirector')
      ->gotoRoute(
        array(
          'action'=>'index',
          'controller'=>'admin'
        ),
        'default'
    );
  }
  
  private function _redirectToLoginPage()
  {
    return $this->_helper->getHelper('Redirector')
      ->gotoRoute(
        array(
          'action'=>'login',
          'controller'=>'admin'
        ),
        'default'
    );
  }
  
  private function _redirectToHomePage()
  {
    return $this->_helper->getHelper('Redirector')
      ->gotoRoute(
        array(
          'action'=>'index',
          'controller'=>'index'
        ),
        'default'
    );
  }
  
}
