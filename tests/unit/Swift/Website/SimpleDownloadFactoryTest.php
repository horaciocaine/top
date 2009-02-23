<?php

class Swift_Website_SimpleDownloadFactoryTest
  extends Swift_Website_UnitTestCase
{
  
  public function testFactoryLooksUpUrlFromCorrectDownloadSource()
  {
    $sourceA = $this->_createMockSource();
    $sourceB = $this->_createMockSource();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> ignoring($sourceA)->getSourceName() -> returns('A')
      -> ignoring($sourceB)->getSourceName() -> returns('B')
      -> one($sourceB)->getDownloadUrl('file.zip') -> returns('http://site-a.tld/files/file.zip')
      -> atLeast(1)->of($client)
        ->getHeaders('http://site-a.tld/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> returns(array('Status' => '200 OK'))
      -> never($sourceA)->getDownloadUrl(any())
      -> ignoring($client)
      -> ignoring($download)
      );
    
    $factory = $this->_createDownloadFactory(array($sourceA, $sourceB), $client);
    
    $factory->createDownload('file.zip', 'B', $download);
  }
  
  public function testFactoryGetsHeadersFromHttpClient()
  {
    $source = $this->_createMockSource();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> ignoring($source)->getSourceName() -> returns('X')
      -> one($source)->getDownloadUrl('file.zip') -> returns('http://a.b/files/file.zip')
      -> atLeast(1)->of($client)
        ->getHeaders('http://a.b/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> returns(array('Status' => '200 OK', 'Content-Length' => 1234))
      -> ignoring($client)
      -> ignoring($download)
      );
    
    $factory = $this->_createDownloadFactory(array($source), $client);
    
    $factory->createDownload('file.zip', 'X', $download);
  }
  
  public function testFactoryResolvesHeadersWhileLocationHeaderIsPresent()
  {
    $source = $this->_createMockSource();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> ignoring($source)->getSourceName() -> returns('X')
      -> one($source)->getDownloadUrl('file.zip') -> returns('http://a.b/files/file.zip')
      -> one($client)->getHeaders('http://a.b/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> returns(array('Status' => '302 OK', 'Location' => 'http://b.c/file.zip'))
      -> one($client)->getHeaders('http://b.c/file.zip')
        -> returns(array('Status' => '302 OK', 'Location' => 'http://d.e/file.zip'))
      -> one($client)->getHeaders('http://d.e/file.zip')
        -> returns(array('Status' => '200 OK', 'Content-Type' => 'application/zip'))
      -> ignoring($client)
      -> ignoring($download)
      );
    
    $factory = $this->_createDownloadFactory(array($source), $client);
    
    $factory->createDownload('file.zip', 'X', $download);
  }
  
  public function testFactoryWritesSourceNameToDownload()
  {
    $source = $this->_createMockSource();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> ignoring($source)->getSourceName() -> returns('X')
      -> one($source)->getDownloadUrl('file.zip') -> returns('http://a.b/files/file.zip')
      -> atLeast(1)->of($client)
        ->getHeaders('http://a.b/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> returns(array('Status' => '200 OK'))
      -> one($download)->setSource('X')
      -> ignoring($client)
      -> ignoring($download)
      );
    
    $factory = $this->_createDownloadFactory(array($source), $client);
    
    $factory->createDownload('file.zip', 'X', $download);
  }
  
  public function testFactoryAssignsTimeCreated()
  {
    $source = $this->_createMockSource();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> ignoring($source)->getSourceName() -> returns('X')
      -> one($source)->getDownloadUrl('file.zip') -> returns('http://a.b/files/file.zip')
      -> atLeast(1)->of($client)
        ->getHeaders('http://a.b/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> returns(array('Status' => '200 OK'))
      -> one($download)->setTimeCreated(any())
      -> ignoring($client)
      -> ignoring($download)
      );
    
    $factory = $this->_createDownloadFactory(array($source), $client);
    
    $factory->createDownload('file.zip', 'X', $download);
  }
  
  public function testFactoryAssignsFilename()
  {
    $source = $this->_createMockSource();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> ignoring($source)->getSourceName() -> returns('X')
      -> one($source)->getDownloadUrl('file.zip') -> returns('http://a.b/files/file.zip')
      -> atLeast(1)->of($client)
        ->getHeaders('http://a.b/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> returns(array('Status' => '200 OK'))
      -> one($download)->setName('file.zip')
      -> ignoring($client)
      -> ignoring($download)
      );
    
    $factory = $this->_createDownloadFactory(array($source), $client);
    
    $factory->createDownload('file.zip', 'X', $download);
  }
  
  public function testFactorySetsFilesizeAsContentLengthIfPresent()
  {
    $source = $this->_createMockSource();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> ignoring($source)->getSourceName() -> returns('X')
      -> one($source)->getDownloadUrl('file.zip') -> returns('http://a.b/files/file.zip')
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
    
    $factory = $this->_createDownloadFactory(array($source), $client);
    
    $factory->createDownload('file.zip', 'X', $download);
  }
  
  public function testFactoryDownloadsBodyToGetFilesizeIfNoContentLengthHeaderPresent()
  {
    $source = $this->_createMockSource();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> ignoring($source)->getSourceName() -> returns('X')
      -> one($source)->getDownloadUrl('file.zip') -> returns('http://a.b/files/file.zip')
      -> atLeast(1)->of($client)
        ->getHeaders('http://a.b/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> returns(array('Status' => '200 OK'))
      -> one($client)->getBody('http://a.b/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> returns('1234567890')
      -> one($download)->setSize(10)
      -> ignoring($client)
      -> ignoring($download)
      );
    
    $factory = $this->_createDownloadFactory(array($source), $client);
    
    $factory->createDownload('file.zip', 'X', $download);
  }
  
  public function testExceptionIsThrownIfDownloadSourceDoesNotExist()
  {
    $source = $this->_createMockSource();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> ignoring($source)->getSourceName() -> returns('X')
      -> never($source)->getDownloadUrl('file.zip')
      -> never($client)
      -> never($download)
      );
    
    $factory = $this->_createDownloadFactory(array($source), $client);
    
    try
    {
      $factory->createDownload('file.zip', 'Y', $download);
      $this->fail('Exception should be thrown since download source Y does not exist');
    }
    catch (Swift_WebsiteException $e)
    {
    }
  }
  
  public function testExceptionIsThrownIfHttpClientThrowsException()
  {
    $source = $this->_createMockSource();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> ignoring($source)->getSourceName() -> returns('X')
      -> one($source)->getDownloadUrl('file.zip') -> returns('http://a.b/files/file.zip')
      -> atLeast(1)->of($client)
        ->getHeaders('http://a.b/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> throws(new Swift_Website_HttpClientException('test'))
      -> never($download)
      -> ignoring($client)
      );
    
    $factory = $this->_createDownloadFactory(array($source), $client);
    
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
    $source = $this->_createMockSource();
    $download = $this->_createMockDownload();
    $client = $this->_createMockHttpClient();
    
    $this->_checking(Expectations::create()
      -> ignoring($source)->getSourceName() -> returns('X')
      -> one($source)->getDownloadUrl('file.zip') -> returns('http://a.b/files/file.zip')
      -> atLeast(1)->of($client)
        ->getHeaders('http://a.b/files/file.zip', Swift_Website_HttpClient::METHOD_GET)
        -> returns(array('Status' => '400 Not Found'))
      -> never($download)
      -> ignoring($client)
      );
    
    $factory = $this->_createDownloadFactory(array($source), $client);
    
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
  
  private function _createDownloadFactory($sources, $httpClient)
  {
    return new Swift_Website_SimpleDownloadFactory($sources, $httpClient);
  }
  
  private function _createMockSource()
  {
    return $this->_mock('Swift_Website_DownloadSource');
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
