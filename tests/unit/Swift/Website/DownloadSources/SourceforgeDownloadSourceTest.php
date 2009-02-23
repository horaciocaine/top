<?php

class Swift_Website_DownloadSources_SourceforgeDownloadSourceTest
  extends Swift_Website_UnitTestCase
{
  
  public function testSourceNameIsSourceforge()
  {
    $source = $this->_createDownloadSource('proj');
    $this->assertEqual('sourceforge', $source->getSourceName(),
      '%s: Source name should be "sourceforge"'
    );
  }
  
  public function testDownloadUrlHasCorrectStructure()
  {
    $source = $this->_createDownloadSource('proj');
    $this->assertEqual(
      'http://downloads.sourceforge.net/proj/test-file.zip',
      $source->getDownloadUrl('test-file.zip'),
      '%s: Download URL should represent sourceforge naming scheme'
    );
  }
  
  // -- Creation Methods
  
  private function _createDownloadSource($projectName)
  {
    return new Swift_Website_DownloadSources_SourceforgeDownloadSource(
      $projectName
    );
  }
  
}
