<?php

/**
 * A topic in the documentation of swiftmailer.org.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_Topic
{
  
  /** The name of the topic */
  private $_topicName;
  
  /** The path to the file containing the head contents */
  private $_headFile;
  
  /** The path to the file containing the body contents */
  private $_bodyFile;
  
  /**
   * Create a new Topic based on the topic name.
   * 
   * @param string $topicDir
   * @param string $topicName
   * 
   * @throws Swift_Website_TopicNotFoundException
   */
  public function __construct($topicDir, $topicName)
  {
    $headFile = $this->_getHeadFilePath($topicDir, $topicName);
    $bodyFile = $this->_getBodyFilePath($topicDir, $topicName);
    
    if (!file_exists($headFile))
    {
      throw new Swift_Website_TopicNotFoundException(
        sprintf('HEAD content for topic %s not found', $topicName)
      );
    }
    
    if (!file_exists($bodyFile))
    {
      throw new Swift_Website_TopicNotFoundException(
        sprintf('BODY content for topic %s not found', $topicName)
      );
    }
    
    $this->_topicName = $topicName;
    $this->_headFile = $headFile;
    $this->_bodyFile = $bodyFile;
  }
  
  /**
   * Get the name of this topic.
   * 
   * @return string
   */
  public function getName()
  {
    return $this->_topicName;
  }
  
  /**
   * Get the body content (HTML) of this topic.
   * 
   * @return string
   */
  public function getBodyContent()
  {
    return file_get_contents($this->_bodyFile);
  }
  
  /**
   * Get the head content (HTML) of this topic.
   * 
   * @return string
   */
  public function getHeadContent()
  {
    return file_get_contents($this->_headFile);
  }
  
  // -- Private Methods
  
  private function _getHeadFilePath($topicDir, $topicName)
  {
    return sprintf('%s/head/%s.html', $topicDir, $topicName);
  }
  
  private function _getBodyFilePath($topicDir, $topicName)
  {
    return sprintf('%s/body/%s.html', $topicDir, $topicName);
  }
  
}
