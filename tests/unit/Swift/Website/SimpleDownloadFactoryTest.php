<?php

class Swift_Website_SimpleDownloadFactoryTest
  extends Swift_Website_UnitTestCase
{
  
  public function testFactoryLooksUpUrlFromResolver()
  {
    $resolver = $this->_createMockResolver();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> one($resolver)->getDownloadUrl('file.zip', 'B') -> returns('http://site-a.tld/files/file.zip')
      -> atLeast(1)->of($client)
        ->getHeaders('http://site-a.tld/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> returns(array('Status' => '200 OK'))
      -> ignoring($client)
      -> ignoring($download)
      );
    
    $factory = $this->_createDownloadFactory($resolver, $client);
    
    $factory->createDownload('file.zip', 'B', $download);
  }
  
  public function testFactoryGetsHeadersFromHttpClient()
  {
    $resolver = $this->_createMockResolver();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> one($resolver)->getDownloadUrl('file.zip', 'X') -> returns('http://a.b/files/file.zip')
      -> atLeast(1)->of($client)
        ->getHeaders('http://a.b/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> returns(array('Status' => '200 OK', 'Content-Length' => 1234))
      -> ignoring($client)
      -> ignoring($download)
      );
    
    $factory = $this->_createDownloadFactory($resolver, $client);
    
    $factory->createDownload('file.zip', 'X', $download);
  }
  
  public function testFactoryResolvesHeadersWhileLocationHeaderIsPresent()
  {
    $resolver = $this->_createMockResolver();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> one($resolver)->getDownloadUrl('file.zip', 'X') -> returns('http://a.b/files/file.zip')
      -> one($client)->getHeaders('http://a.b/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> returns(array('Status' => '302 OK', 'Location' => 'http://b.c/file.zip'))
      -> one($client)->getHeaders('http://b.c/file.zip')
        -> returns(array('Status' => '302 OK', 'Location' => 'http://d.e/file.zip'))
      -> one($client)->getHeaders('http://d.e/file.zip')
        -> returns(array('Status' => '200 OK', 'Content-Type' => 'application/zip'))
      -> ignoring($client)
      -> ignoring($download)
      );
    
    $factory = $this->_createDownloadFactory($resolver, $client);
    
    $factory->createDownload('file.zip', 'X', $download);
  }
  
  public function testFactoryWritesSourceNameToDownload()
  {
    $resolver = $this->_createMockResolver();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> one($resolver)->getDownloadUrl('file.zip', 'X') -> returns('http://a.b/files/file.zip')
      -> atLeast(1)->of($client)
        ->getHeaders('http://a.b/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> returns(array('Status' => '200 OK'))
      -> one($download)->setSource('X')
      -> ignoring($client)
      -> ignoring($download)
      );
    
    $factory = $this->_createDownloadFactory($resolver, $client);
    
    $factory->createDownload('file.zip', 'X', $download);
  }
  
  public function testFactoryAssignsTimeCreated()
  {
    $resolver = $this->_createMockResolver();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> one($resolver)->getDownloadUrl('file.zip', 'X') -> returns('http://a.b/files/file.zip')
      -> atLeast(1)->of($client)
        ->getHeaders('http://a.b/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> returns(array('Status' => '200 OK'))
      -> one($download)->setTimeCreated(any())
      -> ignoring($client)
      -> ignoring($download)
      );
    
    $factory = $this->_createDownloadFactory($resolver, $client);
    
    $factory->createDownload('file.zip', 'X', $download);
  }
  
  public function testFactoryAssignsFilename()
  {
    $resolver = $this->_createMockResolver();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> one($resolver)->getDownloadUrl('file.zip', 'X') -> returns('http://a.b/files/file.zip')
      -> atLeast(1)->of($client)
        ->getHeaders('http://a.b/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> returns(array('Status' => '200 OK'))
      -> one($download)->setName('file.zip')
      -> ignoring($client)
      -> ignoring($download)
      );
    
    $factory = $this->_createDownloadFactory($resolver, $client);
    
    $factory->createDownload('file.zip', 'X', $download);
  }
  
  public function testFactorySetsFilesizeAsContentLengthIfPresent()
  {
    $resolver = $this->_createMockResolver();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> one($resolver)->getDownloadUrl('file.zip', 'X') -> returns('http://a.b/files/file.zip')
      -> one($client)->getHeaders('http://a.b/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> returns(array('Status' => '302 OK', 'Location' => 'http://b.c/file.zip'))
      -> one($client)->getHeaders('http://b.c/file.zip')
        -> returns(array('Status' => '302 OK', 'Location' => 'http://d.e/file.zip'))
      -> one($client)->getHeaders('http://d.e/file.zip')
        -> returns(array('Status' => '200 OK', 'Content-Length' => 123))
      -> one($download)->setSize(123)
      -> ignoring($client)
      -> ignoring($download)
      );
    
    $factory = $this->_createDownloadFactory($resolver, $client);
    
    $factory->createDownload('file.zip', 'X', $download);
  }
  
  public function testFactoryDownloadsBodyToGetFilesizeIfNoContentLengthHeaderPresent()
  {
    $resolver = $this->_createMockResolver();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> one($resolver)->getDownloadUrl('file.zip', 'X') -> returns('http://a.b/files/file.zip')
      -> atLeast(1)->of($client)
        ->getHeaders('http://a.b/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> returns(array('Status' => '200 OK'))
      -> one($client)->getBody('http://a.b/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> returns('1234567890')
      -> one($download)->setSize(10)
      -> ignoring($client)
      -> ignoring($download)
      );
    
    $factory = $this->_createDownloadFactory($resolver, $client);
    
    $factory->createDownload('file.zip', 'X', $download);
  }
  
  public function testExceptionIsThrownIfResolverThrowsException()
  {
    $resolver = $this->_createMockResolver();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> ignoring($resolver)->getDownloadUrl('file.zip', 'X')
        -> throws(new Swift_WebsiteException('test'))
      -> never($client)
      -> never($download)
      );
    
    $factory = $this->_createDownloadFactory($resolver, $client);
    
    try
    {
      $factory->createDownload('file.zip', 'X', $download);
      $this->fail('Exception should be thrown since resolver throws Exception');
    }
    catch (Swift_WebsiteException $e)
    {
    }
  }
  
  public function testExceptionIsThrownIfHttpClientThrowsException()
  {
    $resolver = $this->_createMockResolver();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> one($resolver)->getDownloadUrl('file.zip', 'X') -> returns('http://a.b/files/file.zip')
      -> atLeast(1)->of($client)
        ->getHeaders('http://a.b/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> throws(new Swift_Website_HttpClientException('test'))
      -> never($download)
      -> ignoring($client)
      );
    
    $factory = $this->_createDownloadFactory($resolver, $client);
    
    try
    {
      $factory->createDownload('file.zip', 'X', $download);
      $this->fail('Exception should be thrown since client throws Exception');
    }
    catch (Swift_WebsiteException $e)
    {
    }
  }
  
  public function testExceptionIsThrownIfStatusIsNotOk()
  {
    $resolver = $this->_createMockResolver();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> one($resolver)->getDownloadUrl('file.zip', 'X') -> returns('http://a.b/files/file.zip')
      -> atLeast(1)->of($client)
        ->getHeaders('http://a.b/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> returns(array('Status' => '400 Not Found'))
      -> never($download)
      -> ignoring($client)
      );
    
    $factory = $this->_createDownloadFactory($resolver, $client);
    
    try
    {
      $factory->createDownload('file.zip', 'X', $download);
      $this->fail('Exception should be thrown since client throws Exception');
    }
    catch (Swift_WebsiteException $e)
    {
    }
  }
  
  // -- Creation Methods
  
  private function _createDownloadFactory($resolver, $httpClient)
  {
    return new Swift_Website_SimpleDownloadFactory($resolver, $httpClient);
  }
  
  private function _createMockResolver()
  {
    return $this->_mock('Swift_Website_DownloadResolver');
  }
  
  private function _createMockDownload()
  {
    return $this->_mock('Swift_Website_Download');
  }
  
  private function _createMockHttpClient()
  {
    return $this->_mock('Swift_Website_HttpClient'); 
  }
  
}
