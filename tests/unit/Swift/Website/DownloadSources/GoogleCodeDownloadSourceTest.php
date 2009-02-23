<?php

class Swift_Website_DownloadSources_GoogleCodeDownloadSourceTest
  extends Swift_Website_UnitTestCase
{
  
  public function testSourceNameIsGooglecode()
  {
    $source = $this->_createDownloadSource('proj');
    $this->assertEqual('googlecode', $source->getSourceName(),
      '%s: Source name should be "googlecode"'
    );
  }
  
  public function testDownloadUrlHasCorrectStructure()
  {
    $source = $this->_createDownloadSource('proj');
    $this->assertEqual(
      'http://proj.googlecode.com/files/test-file.zip',
      $source->getDownloadUrl('test-file.zip'),
      '%s: Download URL should represent google code naming scheme'
    );
  }
  
  // -- Creation Methods
  
  private function _createDownloadSource($projectName)
  {
    return new Swift_Website_DownloadSources_GoogleCodeDownloadSource(
      $projectName
    );
  }
  
}
