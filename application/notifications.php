<?php

/*
 Used for queueing messages in a persistent way.
 */

Zend_Registry::getInstance()->set(
  'notification_queue',
  new Swift_Website_NotificationQueue()
);
