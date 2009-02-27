<?php

/*
 swiftmailer.org Download Controller.
 */

/**
 * swiftmailer.org DownloadController.
 * 
 * Finds the downloads that are listed on github and presents them.
 * 
 * @author Chris Corbyn
 */
class DownloadController extends Swift_Website_ActionController
{
  
  /** Lazy-loaded stable download */
  private $_stableDownload;
  
  /** Lazy-loaded unstable download */
  private $_unstableDownload;
  
  /** The download page */
  public function indexAction()
  {
    $this->view->assign(array(
      'title' => 'Latest Downloads',
      'stableDownload' => $this->_getCurrentStableDownload(),
      'unstableDownload' => $this->_getCurrentUnstableDownload()
    ));
  }
  
  /** Show all downloads available */
  public function archiveAction()
  {
    $this->view->assign(array(
      'title' => 'Download Archive',
      'downloads' => $this->_getArchivedDownloads()
    ));
  }
  
  /** Download a specific file */
  public function downloadFileAction()
  {
    $this->_helper->getHelper('ViewRenderer')->setNoRender();
    $this->_helper->getHelper('Layout')->disableLayout();
    
    if (!$download = $this->_getDownloadByFilename(
      $this->getRequest()->get('filename')
      ))
    {
      //TODO: Add Page not found logic
    }
    
    return $this->_redirect($download->getUrl());
  }
  
  // -- Private Methods
  
  private function _getCurrentStableDownload()
  {
    if (!isset($this->_stableDownload))
    {
      $this->_stableDownload = Doctrine::getTable('Download')
        ->getCurrentStableDownload();
    }
    
    return $this->_stableDownload;
  }
  
  private function _getCurrentUnstableDownload()
  {
    if (!isset($this->_unstableDownload))
    {
      $this->_unstableDownload = Doctrine::getTable('Download')
        ->getCurrentUnstableDownload();
    }
    
    return $this->_unstableDownload;
  }
  
  private function _getDownloadByFilename($filename)
  {
    return Doctrine::getTable('Download')->findAvailableByName($filename);
  }
  
  private function _getArchivedDownloads()
  {
    return Doctrine::getTable('Download')->findAllAvailableDescendingByVersion();
  }
  
}
