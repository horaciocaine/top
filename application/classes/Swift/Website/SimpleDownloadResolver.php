<?php

/**
 * Strategy based implementation of {@link Swift_Website_DownloadResolver}.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_SimpleDownloadResolver
  implements Swift_Website_DownloadResolver
{
  
  private $_sources;
  
  /**
   * Create a new DownloadResolver with $sources as strategies.
   * 
   * @param Swift_Website_DownloadSource[] $sources
   */
  public function __construct($sources)
  {
    $this->_sources = array();
    foreach ($sources as $source)
    {
      $this->_sources[$source->getSourceName()] = $source;
    }
  }
  
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
  public function getDownloadUrl($filename, $source)
  {
    if (!array_key_exists($source, $this->_sources))
    {
      throw new Swift_WebsiteException(
        sprintf('Unknown source %s', $source)
      );
    }
    
    return $this->_sources[$source]->getDownloadUrl($filename);
  }
  
}
