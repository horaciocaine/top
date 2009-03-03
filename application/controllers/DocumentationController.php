<?php

/*
 swiftmailer.org Documentation Controller.
 */

/**
 * swiftmailer.org DocumentationController.
 * 
 * Provides controller logic for the docs.
 * 
 * The docs are written in DITA and parsed with DITA-OT so this controller
 * mostly just looks up static content and includes it into the layout.
 * 
 * @author Chris Corbyn
 */
class DocumentationController extends Swift_Website_ActionController
{
  
  /** The docs page */
  public function indexAction()
  {
    return $this->_helper->getHelper('Redirector')
      ->gotoRoute(
        array(
          'action'=>'load-file',
          'controller'=>'documentation',
          'topic' => 'introduction'
        ),
        'docs-file'
    );
  }
  
  /** Shows an individual page from the docs */
  public function loadFileAction()
  {
    $topic = new Swift_Website_Topic(
      $this->_getTopicDir(),
      $this->getRequest()->get('topic')
    );
    
    $this->view->assign(array(
      'headHtml' => $topic->getHeadContent(),
      'topicBody' => $topic->getBodyContent(),
      'topicMap' => $this->_getTopicMap()
    ));
  }
  
  // -- Private Methods
  
  private function _getTopicDir()
  {
    return SWIFT_ROOT_DIR . '/' .
      Zend_Registry::getInstance()->get('config')->get('documentation_dir');
  }
  
  private function _getTopicMap()
  {
    return file_get_contents($this->_getTopicDir() . '/toc.html');
  }
  
}
