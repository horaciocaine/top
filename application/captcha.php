<?php

$captchaConfig = new Zend_Config_Ini(
  SWIFT_APPLICATION_DIR . '/config/captcha.ini',
  SWIFT_APPLICATION_ENVIRONMENT
);

Zend_Registry::getInstance()->set('captchaconfig', $captchaConfig);

unset($mailConfig);
