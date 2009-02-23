<?php

/**
 * Represents the source for a file download from swiftmailer.org.
 * 
 * Files are distributed via 3rd party sites so DownloadSource classes
 * are used to locate them.
 * 
 * @author Chris Corbyn
 */
interface Swift_Website_DownloadSource
{
  
  /**
   * Get the name of this download source.
   * 
   * @return string
   */
  public function getSourceName();
  
  /**
   * Get the download URL for $filename at this source.
   * 
   * @param string $filename
   * @return string
   */
  public function getDownloadUrl($filename);
  
}
