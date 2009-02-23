<?php

/**
 * A very basic HTTP client.
 * 
 * @author Chris Corbyn
 */
interface Swift_Website_HttpClient
{
  
  /** GET request method */
  const METHOD_GET = 'GET';
  
  /** POST request method */
  const METHOD_POST = 'POST';
  
  /** PUT request method */
  const METHOD_PUT = 'PUT';
  
  /** HEAD request method */
  const METHOD_HEAD = 'HEAD';
  
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
  public function getHeaders($url, $method = self::METHOD_GET);
  
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
  public function getBody($url, $method = self::METHOD_GET);
  
}
