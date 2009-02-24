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
      'title' => 'Admin Panel',
      'user' => $this->_getAuthenticator()->getIdentity()
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
    
    if (!$this->getRequest()->isPost())
    {
      return;
    }
    
    $validator = new Swift_Website_SimpleValidator();
    $validator->addRule(new Swift_Website_Validation_Rules_RequiredRule(
      'username', 'Username'
    ));
    $validator->addRule(new Swift_Website_Validation_Rules_RequiredRule(
      'password', 'Password'
    ));
    
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
  
  /** End login session */
  public function logoutAction()
  {
    Zend_Auth::getInstance()->clearIdentity();
    return $this->_redirectToLoginPage();
  }
  
  /** Update the currently logged in user's password */
  public function passwordSettingsAction()
  {
    if (!$this->_getAuthenticator()->hasIdentity())
    {
      return $this->_redirectToLoginPage();
    }
    
    if ($this->getRequest()->get('cancel'))
    {
      return $this->_redirectToAdminIndex();
    }
    
    $this->view->assign(array(
      'title' => 'Password Change',
      'user' => $this->_getAuthenticator()->getIdentity()
    ));
    
    if (!$this->getRequest()->isPost())
    {
      return;
    }
    
    $validator = new Swift_Website_SimpleValidator();
    $validator->addRule(new Swift_Website_Validation_Rules_RequiredRule(
      'currentpassword', 'Current Password'
    ));
    $validator->addRule(new Swift_Website_Validation_Rules_RequiredRule(
      'newpassword0', 'New Password'
    ));
    $validator->addRule(new Swift_Website_Validation_Rules_RequiredRule(
      'newpassword1', 'Repeat Password'
    ));
    $validator->addRule(new Swift_Website_Validation_Rules_MatchedFieldsRule(
      array('newpassword0', 'newpassword1'), 'New Password and Repeat Password'
    ));
    
    if ($validator->isValid($this->getRequest()->getParams()))
    {
      $user = $this->_getAuthenticator()->getIdentity();

      if (!$user->isCorrectPassword($this->getRequest()->get('currentpassword')))
      {
        $validator->addValidationError('The current password is not correct');
      }
      else
      {
        //Change the password
        $user->setPassword($this->getRequest()->get('newpassword0'));
        $user->save();
        
        return $this->_redirectToAdminIndex();
      }
    }
    
    $this->view->assign(array(
      'validationErrors' => $validator->getValidationErrors()
    ));
  }
  
  /** Add packages for public download, revoke existing packages */
  public function downloadManagerAction()
  {
    if (!$this->_getAuthenticator()->hasIdentity())
    {
      return $this->_redirectToLoginPage();
    }
    
    $this->view->assign(array(
      'title' => 'Download Manager',
      'user' => $this->_getAuthenticator()->getIdentity()
    ));
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
