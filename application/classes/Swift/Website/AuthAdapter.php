<?php

/**
 * Custom Auth adapter for Zend_Auth.
 * 
 * This auth adapter is based on the ability to find a matching user in the DB.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_AuthAdapter implements Zend_Auth_Adapter_Interface
{
  
  /** The username provided by the user */
  private $_username;
  
  /** The password provided by the user */
  private $_password;
  
  /**
   * Create a new AuthAdapter for $username and $password.
   * 
   * @param string $username
   * @param string $password
   */
  public function __construct($username, $password)
  {
    $this->_username = $username;
    $this->_password = $password;
  }
  
  /**
   * Performs an authentication attempt.
   * 
   * @throws Zend_Auth_Adapter_Exception If authentication cannot
   *                                     be performed
   * @return Zend_Auth_Result
   */
  public function authenticate()
  {
    if ($user = Doctrine::getTable('User')->findByUsernameAndPassword(
      $this->_username, $this->_password
      ))
    {
      $result = new Zend_Auth_Result(Zend_Auth_Result::SUCCESS, $user);
    }
    else
    {
      $result = new Zend_Auth_Result(Zend_Auth_Result::FAILURE, null);
    }
    
    return $result;
  }
  
}
