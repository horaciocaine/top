<?php

/**
 * Retrieves download URLs for files stored at sourceforge.com.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_DownloadSources_SourceforgeDownloadSource
  implements Swift_Website_DownloadSource
{
  
  /** The base URL where the download resides */
  const SOURCEFORGE_URL = 'http://downloads.sourceforge.net';
  
  /** The name of the project at sourceforge */
  private $_projectName;
  
  /**
   * Create a new SourceforgeDownloadSource for $projectName.
   * 
   * @param string $projectName
   */
  public function __construct($projectName)
  {
    $this->_projectName = $projectName;
  }
  
  /**
   * Returns the name of this source (sourceforge).
   * 
   * @return string
   */
  public function getSourceName()
  {
    return 'sourceforge';
  }
  
  /**
   * Gets the URL where the file resides at sourceforge.com.
   * 
   * @param string $filename
   * @return string
   */
  public function getDownloadUrl($filename)
  {
    return sprintf(
      '%s/%s/%s',
      self::SOURCEFORGE_URL,
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
