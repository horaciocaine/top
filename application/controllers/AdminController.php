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
class AdminController extends Swift_Website_ActionController
{
  
  /** Lazy-loaded Download object */
  private $_download;
  
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
    
    $this->view->assign(array(
      'title' => 'Login'
    ));
    
    $form = $this->_getForm(
      array('username', 'password'),
      array(),
      array('cancel_field'=>'cancel')
    );
    
    if (!$form->isSubmitted())
    {
      return;
    }
    
    if ($form->isCancelled())
    {
      return $this->_redirectToHomePage();
    }
    
    $validator = $this->_getValidator(array(
      new Swift_Website_Validation_Rules_RequiredRule('username', 'Username'),
      new Swift_Website_Validation_Rules_RequiredRule('password', 'Password')
    ));
    
    if ($validator->isValid($form->getValues()))
    {
      $values = $form->getValues();
      
      $result = $this->_authenticate($values['username'], $values['password']);
      
      if (!$result->isValid())
      {
        $validator->addValidationError('Incorrect username or password');
      }
      else
      {
        return $this->_redirectToAdminIndex();
      }
    }
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
    
    $this->view->assign(array(
      'title' => 'Password Change',
      'user' => $this->_getAuthenticator()->getIdentity()
    ));
    
    $form = $this->_getForm(
      array('currentpassword', 'newpassword0', 'newpassword1'),
      array(),
      array('cancel_field'=>'cancel')
    );
    
    if (!$form->isSubmitted())
    {
      return;
    }
    
    if ($form->isCancelled())
    {
      return $this->_redirectToAdminIndex();
    }
    
    $validator = $this->_getValidator(array(
      new Swift_Website_Validation_Rules_RequiredRule(
        'currentpassword', 'Current Password'
      ),
      new Swift_Website_Validation_Rules_RequiredRule(
        'newpassword0', 'New Password'
      ),
      new Swift_Website_Validation_Rules_RequiredRule(
        'newpassword1', 'Repeat Password'
      ),
      new Swift_Website_Validation_Rules_MatchedFieldsRule(
        array('newpassword0', 'newpassword1'), 'New Password and Repeat Password'
      )
    ));
    
    if ($validator->isValid($form->getValues()))
    {
      $values = $form->getValues();
      
      $user = $this->_getAuthenticator()->getIdentity();

      if (!$user->isCorrectPassword($values['currentpassword']))
      {
        $validator->addValidationError('The current password is not correct');
      }
      else
      {
        //Change the password
        $user->setPassword($values['newpassword0']);
        $user->save();
        
        Zend_Registry::getInstance()->get('notification_queue')
          ->addNotification(
            'Your password has been changed successfully.'
          )
          ;
        
        return $this->_redirectToAdminIndex();
      }
    }
  }
  
  /** Add packages for public download, revoke existing packages */
  public function downloadManagerAction()
  {
    if (!$this->_getAuthenticator()->hasIdentity())
    {
      return $this->_redirectToLoginPage();
    }
    
    $form = $this->_getForm(
      array('filename', 'source'),
      array(
        'filename' => $this->_getCurrentDownload()->getName(),
        'source' => $this->_getCurrentDownload()->getSource()
      )
    );
    
    $this->view->assign(array(
      'title' => 'Download Manager',
      'user' => $this->_getAuthenticator()->getIdentity(),
      'downloads' => $this->_getAllDownloads()
    ));
    
    if (!$form->isSubmitted())
    {
      return;
    }
    
    $validator = $this->_getValidator(array(
      new Swift_Website_Validation_Rules_RequiredRule('filename', 'Filename'),
      new Swift_Website_Validation_Rules_RequiredRule('source', 'Download Location'),
      new Swift_Website_Validation_Rules_EnumRule(
        'source', array('sourceforge', 'googlecode', 'github'), 'Download Location'
      )
    ));
    
    if ($validator->isValid($form->getValues()))
    {
      $values = $form->getValues();
      
      if (Doctrine::getTable('Download')->findAvailableByName($values['filename']))
      {
        $validator->addValidationError(
          'This file already exists.  Perhaps you need to revoke it?'
        );
      }
      else
      {
        $download = new Download();
      
        try
        {
          Zend_Registry::getInstance()->get('download_factory')
            ->createDownload($values['filename'], $values['source'], $download)
            ;
          $download->setStable(false);
          $download->save();
          
          Zend_Registry::getInstance()->get('notification_queue')
            ->addNotification(
              'The download was created but is marked as unstable. You may edit it.'
            )
            ;
          
          return $this->_helper->getHelper('Redirector')
            ->gotoRoute(
              array(
                'action'=>'edit-download',
                'controller'=>'admin',
                'downloadid' => $download->getDownloadId()
              ),
              'edit-download'
          );
        }
        catch (Swift_Website_DownloadNotFoundException $e)
        {
          $validator->addValidationError(
            'This file could not be found at the remote location'
          );
        }
      }
    }
  }
  
  /** Edit a download that exists in the system */
  public function editDownloadAction()
  {
    if (!$this->_getAuthenticator()->hasIdentity())
    {
      return $this->_redirectToLoginPage();
    }
    
    $form = $this->_getForm(
      array('unstable', 'revoked', 'releasedate'),
      array(
        'unstable' => (int) !$this->_getDownload()->isStable(),
        'revoked' => (int) $this->_getDownload()->isRevoked(),
        'releasedate' => date('j F Y', $this->_getDownload()->getTimeCreated())
      ),
      array('cancel_field'=>'cancel')
    );
    
    $this->view->assign(array(
      'title' => 'Edit Download',
      'user' => $this->_getAuthenticator()->getIdentity(),
      'download' => $this->_getDownload()
    ));
    
    if (!$form->isSubmitted())
    {
      return;
    }
    
    if ($form->isCancelled())
    {
      return $this->_redirectToDownloadManager();
    }
    
    $validator = $this->_getValidator(array(
      new Swift_Website_Validation_Rules_RequiredRule('releasedate', 'Release Date'),
      new Swift_Website_Validation_Rules_DateStringRule('releasedate', 'Release Date')
    ));
    
    if ($validator->isValid($form->getValues()))
    {
      $values = $form->getValues();
      
      $download = $this->_getDownload();
      $download->setStable(empty($values['unstable']));
      $download->setRevoked(!empty($values['revoked']));
      $download->setTimeCreated(strtotime($values['releasedate']));
      $download->save();
      
      Zend_Registry::getInstance()->get('notification_queue')
        ->addNotification('The download was updated successfully')
        ;
      
      return $this->_redirectToDownloadManager();
    }
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
  
  private function _redirectToDownloadManager()
  {
    return $this->_helper->getHelper('Redirector')
      ->gotoRoute(
        array(
          'action'=>'download-manager',
          'controller'=>'admin'
        ),
        'default'
    );
  }
  
  private function _getAllDownloads()
  {
    return Doctrine::getTable('Download')->findAllDescendingByVersion();
  }
  
  private function _getDownload()
  {
    if (!isset($this->_download))
    {
      $this->_download = Doctrine::getTable('Download')->find(
        $this->getRequest()->get('downloadid')
      );
    }
    return $this->_download;
  }
  
  private function _getCurrentDownload()
  {
    if (!isset($this->_currentDownload))
    {
      if (!$currentDownload = Doctrine::getTable('Download')->getCurrentStableDownload())
      {
        $currentDownload = new Download();
        $currentDownload->setName('Swift-0.0.0.tar.gz');
        $currentDownload->setSource('github');
      }
      $this->_currentDownload = $currentDownload;
    }
    
    return $this->_currentDownload;
  }
  
}
