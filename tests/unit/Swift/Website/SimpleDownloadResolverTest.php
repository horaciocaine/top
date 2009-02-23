<?php

class Swift_Website_SimpleDownloadResolverTest
  extends Swift_Website_UnitTestCase
{
  
  public function testResolverLooksUpUrlFromCorrectDownloadSource()
  {
    $sourceA = $this->_createMockSource();
    $sourceB = $this->_createMockSource();
    $this->_checking(Expectations::create()
      -> ignoring($sourceA)->getSourceName() -> returns('A')
      -> ignoring($sourceB)->getSourceName() -> returns('B')
      -> one($sourceB)->getDownloadUrl('file.zip') -> returns('http://site-a.tld/files/file.zip')
      -> never($sourceA)->getDownloadUrl(any())
      );
    
    $resolver = $this->_createDownloadResolver(array($sourceA, $sourceB));
    
    $url = $resolver->getDownloadUrl('file.zip', 'B');
  }
  
  public function testExceptionIsThrownIfDownloadSourceDoesNotExist()
  {
    $source = $this->_createMockSource();
    $this->_checking(Expectations::create()
      -> ignoring($source)->getSourceName() -> returns('X')
      -> never($source)->getDownloadUrl('file.zip')
      );
    
    $resolver = $this->_createDownloadResolver(array($source));
    
    try
    {
      $resolver->getDownloadUrl('file.zip', 'Y');
      $this->fail('Exception should be thrown since download source Y does not exist');
    }
    catch (Swift_WebsiteException $e)
    {
    }
  }
  
  // -- Creation Methods
  
  private function _createDownloadResolver($sources)
  {
    return new Swift_Website_SimpleDownloadResolver($sources);
  }
  
  private function _createMockSource()
  {
    return $this->_mock('Swift_Website_DownloadSource');
  }
  
}
