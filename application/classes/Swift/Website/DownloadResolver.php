<?php

/**
 * Resolves URLs for downloads at remote sources.
 * 
 * @author Chris Corbyn
 */
interface Swift_Website_DownloadResolver
{
  
  /**
   * Resolve the URL at which $filename can be found at $source.
   * 
   * If the URL cannot be determined an Exception will be thrown.
   * 
   * @param string $filename
   * @param string $source
   * 
   * @return string
   * 
   * @throws Swift_Website_DownloadNotFoundException
   * 
   * @see Swift_Website_Download::SOURCE_SOURCEFORGE
   * @see Swift_Website_Download::SOURCE_GOOGLECODE
   * @see Swift_Website_Download::SOURCE_GITHUB
   */
  public function getDownloadUrl($filename, $source);
  
}
