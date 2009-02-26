<?php

/**
 * View helper for getting the currently available download.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_View_Helpers_CurrentDownload
  implements Zend_View_Helper_Interface
{
  
  /** The lazy-loaded download */
  private $_download;
  
  /**
   * Get the current download.
   * 
   * @return Download
   */
  public function currentDownload()
  {
    if (!isset($this->_download))
    {
      if (!$download = Doctrine::getTable('Download')->getCurrentDownload())
      {
        $download = new Download();
        $download->setFilename('Swift-0.0.0.tar.gz');
        $download->setSource('github');
      }
      
      $this->_download = $download;
    }
    
    return $this->_download;
  }
  
  /**
   * Set the Zend_View instance.
   * 
   * This tries to get the form values from the view.
   * 
   * @param Zend_View_Interface
   */
  public function setView(Zend_View_Interface $view)
  {
  }
  
  /**
   * Not currently used.
   */
  public function direct()
  {
  }
  
}
