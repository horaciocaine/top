<?php

/**
 * View helper for accessing (once-only) the notification queue.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_View_Helpers_Notifications
  implements Zend_View_Helper_Interface
{
  
  /**
   * Get any notifications that are on the queue.
   * 
   * @return array
   */
  public function notifications()
  {
    $queue = Zend_Registry::getInstance()->get('notification_queue');
    $notifications = $queue->getNotifications();
    $queue->clearNotifications();
    return $notifications;
  }
  
  /**
   * Set the Zend_View instance.
   * 
   * This tries to get the form values from the view.
   * 
   * @param Zend_View_Interface
   */
  public function setView(Zend_View_Interface $view)
  {
  }
  
  /**
   * Not currently used.
   */
  public function direct()
  {
  }
  
}
