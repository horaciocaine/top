<?php

/**
 * Basic implementation of {@link Swift_Website_HttpClient}.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_SimpleHttpClient implements Swift_Website_HttpClient
{
  
  /**
   * Retrieve headers of the resource at the remote URL.
   * 
   * An an associative array of headers is returned.
   * 
   * If the remote URL does not resolve an Exception is thrown.
   * 
   * @param string $url
   * @param string $method, optional
   * 
   * @return array
   * 
   * @throws Swift_Website_HttpClientException
   * 
   * @see METHOD_GET, METHOD_POST, METHOD_PUT, METHOD_HEAD
   */
  public function getHeaders($url, $method = self::METHOD_GET)
  {
    //TODO: Refactor this
    
    $headers = array();
    $parts = parse_url($url);
    $host = $parts['host'];
    $port = strtolower($parts['scheme'] == 'https')
      ? 443
      : 80
      ;
    $path = !empty($parts['path'])
      ? $parts['path']
      : '/'
      ;
    if (!empty($parts['port']))
    {
      $port = $parts['port'];
    }
    
    $transport = strtolower($parts['scheme'] == 'https')
      ? 'ssl'
      : 'tcp'
      ;
    
    if (!$sock = fsockopen(
      sprintf('%s://%s', $transport, $host),
      $port, $errno, $errstr, 10))
    {
      throw new Swift_Website_HttpClientException(sprintf(
        'Failed to connect to HTTP host '
      ));
    }
    
    if (!fwrite(
      $sock,
      sprintf("%s %s HTTP/1.0\r\n", $method, $path) .
      sprintf("HOST: %s\r\n", $host) .
      "Connection: close\r\n\r\n"
      ))
    {
      throw new Swift_Website_HttpClientException('Failed to write to socket');
    }
    
    $headerString = '';
    while (!feof($sock) && "\r\n" != $line = fgets($sock))
    {
      $headerString .= $line;
    }
    
    fclose($sock);
    
    $headerLines = preg_split('~\r\n(?![ \t])~', $headerString);
    
    foreach ($headerLines as $line)
    {
      //Resolve Status from HTTP line
      if (preg_match('~HTTP/1\.[01] ([0-9]{3}).*~', $line, $matches))
      {
        $headers['Status'] = $matches[1];
        continue;
      }
      
      if (false !== $colonPos = strpos($line, ':'))
      {
        $name = trim(substr($line, 0, $colonPos));
        $value = trim($this->_unfoldHeader(substr($line, $colonPos + 1)));
        
        $headers[$name] = $value;
      }
    }
    
    return $headers;
  }
  
  /**
   * Get the body of the resource at the remote URL.
   * 
   * A string containing the data is returned.
   * 
   * If the remote URL does not exist an Exception is thrown.
   * 
   * @param string $url
   * @param string $method, optional
   * 
   * @return string
   * 
   * @throws Swift_Website_HttpClientException
   * 
   * @see METHOD_GET, METHOD_POST, METHOD_PUT, METHOD_HEAD
   */
  public function getBody($url, $method = self::METHOD_GET)
  {
    $ch = curl_init($url);
    curl_setopt_array($ch, array(
      CURLOPT_URL => $url,
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_BINARYTRANSFER => true
    ));
    switch ($method)
    {
      case self::METHOD_GET:
        curl_setopt($ch, CURLOPT_HTTPGET, true);
        break;
      
      case self::METHOD_POST:
        curl_setopt($ch, CURLOPT_POST, true);
        break;
      
      case self::METHOD_PUT:
        curl_setopt($ch, CURLOPT_PUT, true);
        break;
      
      case self::METHOD_HEAD:
        curl_setopt($ch, CURLOPT_NOBODY, true);
        break;
      
      default:
        throw new Swift_Website_HttpClientException(sprintf(
          'Unsupported request method %s', $method
        ));
    }
    $response = curl_exec($ch);
    curl_close($ch);
    return $response;
  }
  
  // -- Private Methods
  
  private function _unfoldHeader($header)
  {
    return preg_replace('~\r\n([ \t])~', '$1', $header);
  }
  
}
