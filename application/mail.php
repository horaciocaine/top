<?php

require_once SWIFT_EXTERNALS_DIR . '/swift/lib/swift_required.php';

$mailConfig = new Zend_Config_Ini(
  SWIFT_APPLICATION_DIR . '/config/mail.ini',
  SWIFT_APPLICATION_ENVIRONMENT
);

Zend_Registry::getInstance()->set('mailconfig', $mailConfig);

Zend_Registry::getInstance()->set(
  'mailer',
  Swift_Website_MailerFactory::newInstance()->createMailer($mailConfig)
);

unset($mailConfig);
