<?php

/**
 * Retrieves download URLs for files stored at githib.com.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_DownloadSources_GithubDownloadSource
  implements Swift_Website_DownloadSource
{
  
  /** The base URL where the download resides */
  //const GITHUB_URL = 'http://cloud.github.com/downloads';
  /** Temporary hack due to GitHub issues */
  const GITHIUB_URL = 'http://d24z2fz21y4fag.cloudfront.net/downloads';
  
  /** The name of the github account holder */
  private $_accountName;
  
  /** The name of the project at github */
  private $_projectName;
  
  /**
   * Create a new GithubDownloadSource for $accountName and $projectName.
   * 
   * @param string $accountName
   * @param string $projectName
   */
  public function __construct($accountName, $projectName)
  {
    $this->_accountName = $accountName;
    $this->_projectName = $projectName;
  }
  
  /**
   * Returns the name of this source (github).
   * 
   * @return string
   */
  public function getSourceName()
  {
    return 'github';
  }
  
  /**
   * Gets the URL where the file resides at github.com.
   * 
   * @param string $filename
   * 
   * @return string
   */
  public function getDownloadUrl($filename)
  {
    return sprintf(
      '%s/%s/%s/%s',
      self::GITHUB_URL,
      $this->_sanitize($this->_accountName),
      $this->_sanitize($this->_projectName),
      $this->_sanitize($filename)
    );
  }
  
  // -- Private Methods
  
  private function _sanitize($string)
  {
    return urlencode($string);
  }
  
}
