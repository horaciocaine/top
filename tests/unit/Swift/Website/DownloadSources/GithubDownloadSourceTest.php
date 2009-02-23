<?php

class Swift_Website_DownloadSources_GithubDownloadSourceTest
  extends Swift_Website_UnitTestCase
{
  
  public function testSourceNameIsGithub()
  {
    $source = $this->_createDownloadSource('acc', 'proj');
    $this->assertEqual('github', $source->getSourceName(),
      '%s: Source name should be "github"'
    );
  }
  
  public function testDownloadUrlHasCorrectStructure()
  {
    $source = $this->_createDownloadSource('acc', 'proj');
    $this->assertEqual(
      'http://cloud.github.com/downloads/acc/proj/test-file.zip',
      $source->getDownloadUrl('test-file.zip'),
      '%s: Download URL should represent github naming scheme'
    );
  }
  
  // -- Creation Methods
  
  private function _createDownloadSource($accountName, $projectName)
  {
    return new Swift_Website_DownloadSources_GithubDownloadSource(
      $accountName, $projectName
    );
  }
  
}
