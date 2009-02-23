<?php

/**
 * A distribution download from the swiftmailer.org site.
 * 
 * @author Chris Corbyn
 */
interface Swift_Website_Download
{
  
  /** Defintion for downloads from SourceForge */
  const SOURCE_SOURCEFORGE = 'sourceforge';
  
  /** Definition for downloads from Google Code */
  const SOURCE_GOOGLECODE = 'googlecode';
  
  /** Definition for downloads from GitHub */
  const SOURCE_GITHUB = 'github';
  
  /**
   * Set the name of the file.
   * 
   * @param string $name
   */
  public function setName($name);
  
  /**
   * Get the file name of the download.
   * 
   * @return string
   */
  public function getName();
  
  /**
   * Set the remote source where the file is listed.
   * 
   * @param string $source
   */
  public function setSource($source);
  
  /**
   * Get the source of the download.
   * 
   * @return string
   * 
   * @see SOURCE_SOURCEFORGE, SOURCE_GOOGLECODE, SOURCE_GITHUB
   */
  public function getSource();
  
  /**
   * Set the size of the download in bytes.
   * 
   * @param int $size
   */
  public function setSize($size);
  
  /**
   * Get the size of the download in bytes.
   * 
   * @return int
   */
  public function getSize();
  
  /**
   * Set the time at which this download was created.
   * 
   * @param int $timestamp
   */
  public function setTimeCreated($timestamp);
  
  /**
   * Get the release date of the download.
   * 
   * @return int
   */
  public function getTimeCreated();
  
}
