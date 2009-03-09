<?php

/*
 swiftmailer.org Contact Controller.
 */

/**
 * swiftmailer.org ContactController.
 * 
 * Provides controller log for the contact page.
 * 
 * @author Chris Corbyn
 */
class ContactController extends Swift_Website_ActionController
{
  
  /** The contact page */
  public function indexAction()
  {
    //TODO: Refactor a lot of this into smaller service classes
    
    $config = Zend_Registry::getInstance()->get('config');
    $captchaConfig = Zend_Registry::getInstance()->get('captchaconfig');
    
    $captcha = new Zend_Service_ReCaptcha(
      $captchaConfig->get('recaptcha_pubkey'),
      $captchaConfig->get('recaptcha_privkey')
    );
    
    $form = $this->_getForm(array(
      'subject',
      'email',
      'message',
      'recaptcha_challenge_field',
      'recaptcha_response_field'
    ));
    
    $this->view->assign(array(
      'title' => 'Contact the Developers',
      'lighthouseUrl' => $config->get('lighthouse_page'),
      'googleGroupName' => $config->get('google_group_name'),
      'googleGroupUrl' => $config->get('google_group_page'),
      'githubUrl' => $config->get('github_page'),
      'forumUrl' => $config->get('devnetwork_forum_page'),
      'captcha' => $captcha
    ));
    
    if (!$form->isSubmitted())
    {
      return;
    }
    
    $validator = $this->_getValidator(array(
      new Swift_Website_Validation_Rules_RequiredRule('subject', 'Subject'),
      new Swift_Website_Validation_Rules_RequiredRule('email', 'E-mail Address'),
      new Swift_Website_Validation_Rules_RequiredRule('message', 'Message'),
      new Swift_Website_Validation_Rules_EmailRule('email', 'E-mail Address'),
      new Swift_Website_Validation_Rules_RequiredRule('recaptcha_challenge_field'),
      new Swift_Website_Validation_Rules_RequiredRule(
        'recaptcha_response_field', null, 'You must type the two words in the captcha'
      )
    ));
    
    if ($validator->isValid($form->getValues()))
    {
      $values = $form->getValues();
      
      $captchaResult = $captcha->verify(
        $values['recaptcha_challenge_field'],
        $values['recaptcha_response_field']
      );
      
      //TODO: Swap this out for asynchronous sending
      //TODO: Move this to a Command object
      $mailConfig = Zend_Registry::getInstance()->get('mailconfig');
      
      $message = Swift_Message::newInstance($values['subject'])
        ->setBody($values['message'])
        ->setSender($mailConfig->get('developer_email'))
        ->setFrom($values['email'])
        ->setReplyTo($values['email'])
        ->setTo($mailConfig->get('developer_email'))
        ;
      
      if (!$captchaResult->isValid())
      {
        $validator->addValidationError(
          'The two words from the image do not appear to be correct.  Have another go.'
          );
      }
      elseif (!Zend_Registry::getInstance()->get('mailer')->send($message))
      {
        $validator->addValidationError(
          'We\'re really sorry but there\'s a problem sending the email. ' .
          'Please try again later.'
          );
      }
      else
      {
        return $this->_helper->getHelper('Redirector')
          ->gotoRoute(
            array(
              'action'=>'success',
              'controller'=>'contact'
            ),
            'default'
        );
      }
    }
  }
  
  /** Loaded when a message is sent successfully */
  public function successAction()
  {
    $this->view->assign(array(
      'title' => 'Message Sent, Thank You'
    ));
  }
  
}
