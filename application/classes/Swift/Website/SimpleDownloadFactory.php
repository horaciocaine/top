<?php

/**
 * Basic implementation of a {@link Swift_Website_DownloadFactory}.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_SimpleDownloadFactory
  implements Swift_Website_DownloadFactory
{
  
  /** Maximum number of times the request can be redirected */
  const MAX_REDIRECTS = 5;
  
  /** Array of {@link Swift_Website_DownloadSource} of objects */
  private $_sources;
  
  /** HTTP client used for retrieving data from the remote source */
  private $_client;
  
  /**
   * Create a new SimpleDownloadFactory that can create downloads from the
   * list of $sources provided.
   * 
   * @param Swift_Website_DownloadSource[] $sources
   * @param Swift_Website_HttpClient $client
   */
  public function __construct($sources, Swift_Website_HttpClient $client)
  {
    $this->_sources = array();
    foreach ($sources as $source)
    {
      $this->_sources[$source->getSourceName()] = $source;
    }
    $this->_client = $client;
  }
  
  /**
   * Lookup information for $filename at $sourceName and write it to a
   * {@link Swift_Website_Download}.
   * 
   * If the file cannot be found at $sourceName an Exception is thrown.
   * 
   * @param string $filename
   * @param string $sourceName
   * @param Swift_Website_Download $download
   * 
   * @throws Swift_Website_DownloadNotFoundException
   * @throws Swift_WebsiteException
   * 
   * @see Swift_Website_Download::SOURCE_SOURCEFORGE
   * @see Swift_Website_Download::SOURCE_GOOGLECODE
   * @see Swift_Website_Download::SOURCE_GITHUB
   */
  public function createDownload($filename, $sourceName,
    Swift_Website_Download $download)
  {
    if (!array_key_exists($sourceName, $this->_sources))
    {
      throw new Swift_WebsiteException(
        sprintf('Unknown source %s', $sourceName)
      );
    }
    
    $url = $this->_sources[$sourceName]->getDownloadUrl($filename);
    $redirects = 0;
    do
    {
      $redirected = false;
      $headers = (array) $this->_client->getHeaders(
        $url, Swift_Website_HttpClient::METHOD_GET
      );
      if (array_key_exists('Location', $headers))
      {
        $redirected = true;
        ++$redirects;
        $url = $headers['Location'];
      }
    }
    while ($redirected && ($redirects < self::MAX_REDIRECTS));
    
    if (!$this->_isOk($headers))
    {
      throw new Swift_Website_DownloadNotFoundException('File not found');
    }
    
    $download->setSource($sourceName);
    $download->setTimeCreated(time());
    $download->setName($filename);
    
    if (!empty($headers['Content-Length']))
    {
      $download->setSize((int) $headers['Content-Length']);
    }
    else
    {
      $data = (string) $this->_client->getBody(
        $url, Swift_Website_HttpClient::METHOD_GET
      );
      $download->setSize(strlen($data));
    }
  }
  
  // -- Private Methods
  
  private function _isOk($headers)
  {
    return (empty($headers['Status'])
      || ($this->_extractStatus($headers['Status']) >= 200
      && $this->_extractStatus($headers['Status']) < 300));
  }
  
  private function _extractStatus($header)
  {
    sscanf($header, '%d', $status);
    return $status;
  }
  
}
