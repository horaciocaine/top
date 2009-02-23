<?php

/**
 * Creates download domain object based on filenames and their source.
 * 
 * @author Chris Corbyn
 */
interface Swift_Website_DownloadFactory
{
  
  /**
   * Lookup information for $filename at $source and write it to a
   * {@link Swift_Website_Download}.
   * 
   * If the file cannot be found at $source an Exception is thrown.
   * 
   * @param string $filename
   * @param string $source
   * @param Swift_Website_Download $download
   * 
   * @throws Swift_Website_DownloadNotFoundException
   * 
   * @see Swift_Website_Download::SOURCE_SOURCEFORGE
   * @see Swift_Website_Download::SOURCE_GOOGLECODE
   * @see Swift_Website_Download::SOURCE_GITHUB
   */
  public function createDownload($filename, $source,
    Swift_Website_Download $download);
  
}
