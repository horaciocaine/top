<?php
/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class UserTable extends Doctrine_Table
{
  
  /**
   * Find a user based on the username and password.
   * 
   * @param string $username
   * @param string $password
   * 
   * @return User
   */
  public function findByUsernameAndPassword($username, $password)
  {
    return $this->createQuery('dctrn_find')
      ->where(
        'user.username = ?
        AND MD5(CONCAT(?, user.password_salt)) = user.password_hash
        '
      )
      ->limit(1)
      ->fetchOne(array($username, md5($password)), null)
      ;
  }
  
}