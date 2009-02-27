<?php

/**
 * A factory to create instances of {@link Swift_Mailer} based on a config.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_MailerFactory
{
  
  /**
   * Create a new instance of this factory.
   * 
   * @return Swift_Website_MailerFactory
   */
  public static function newInstance()
  {
    return new self();
  }
  
  /**
   * Create a new instance of Swift Mailer from $config.
   * 
   * @param Zend_Config $config
   * 
   * @return Swift_Mailer
   */
  public function createMailer(Zend_Config $config)
  {
    switch ($config->get('mailer_type'))
    {
      case 'smtp':
        $transport = $this->_createSmtpTransport($config);
        break;
        
      case 'sendmail':
        $transport = $this->_createSendmailTransport($config);
        break;
        
      case 'mail':
        $transport = Swift_MailTransport::newInstance();
        break;
        
      default:
        throw new Swift_WebsiteException(
          sprintf('Unsupported mailer_type %s', $config->get('mailer_type'))
        );
    }
    
    return Swift_Mailer::newInstance($transport);
  }
  
  // -- Private Methods
  
  private function _createSmtpTransport(Zend_Config $config)
  {
    $transport = Swift_SmtpTransport::newInstance($config->get('smtp_host'));
    
    if ($config->get('smtp_port'))
    {
      $transport->setPort($config->get('smtp_port'));
    }
    
    if ($config->get('smtp_crypto') && $config->get('smtp_crypto') != 'off')
    {
      $transport->setEncryption($config->get('smtp_crypto'));
    }
    
    if ($config->get('smtp_username'))
    {
      $transport->setUsername($config->get('smtp_username'));
      $transport->setPassword($config->get('smtp_password'));
    }
    
    return $transport;
  }
  
  private function _createSendmailTransport(Zend_Config $config)
  {
    return Swift_SendmailTransport::newInstance($config->get('sendmail_command'));
  }
  
}
