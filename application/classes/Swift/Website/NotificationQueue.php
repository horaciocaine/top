<?php

/**
 * A queue for storing notification messages to be displayed to the user.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_NotificationQueue
{
  
  /** Namespace to use in the session */
  const SESSION_NAMESPACE = 'notification_queue';
  
  /** Session namespace container */
  private $_session;
  
  /**
   * Create a new NotificationQueue.
   */
  public function __construct()
  {
    $this->_session = new Zend_Session_Namespace(self::SESSION_NAMESPACE);
    if (!$this->_session->queue)
    {
      $this->_session->queue = array();
    }
  }
  
  /**
   * Add a new message to the queue.
   * 
   * @param string $message
   */
  public function addNotification($message)
  {
    $this->_session->queue[] = $message;
  }
  
  /**
   * Get all notifications added to this queue.
   * 
   * @return array
   */
  public function getNotifications()
  {
    return (array) $this->_session->queue;
  }
  
  /**
   * Remove all notifications from the queue.
   */
  public function clearNotifications()
  {
    $this->_session->queue = array();
  }
  
}
