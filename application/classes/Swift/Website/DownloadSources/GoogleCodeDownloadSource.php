<?php

/**
 * Retrieves download URLs for files stored at code.google.com.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_DownloadSources_GoogleCodeDownloadSource
  implements Swift_Website_DownloadSource
{
  
  /** The name of the project at google */
  private $_projectName;
  
  /**
   * Create a new GoogleCodeDownloadSource for $projectName.
   * 
   * @param string $projectName
   */
  public function __construct($projectName)
  {
    $this->_projectName = $projectName;
  }
  
  /**
   * Returns the name of this source (googlecode).
   * 
   * @return string
   */
  public function getSourceName()
  {
    return 'googlecode';
  }
  
  /**
   * Gets the URL where the file resides at code.google.com.
   * 
   * @param string $filename
   * 
   * @return string
   */
  public function getDownloadUrl($filename)
  {
    //TODO: Consider moving this URL to a constant
    return sprintf(
      'http://%s.googlecode.com/files/%s',
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
