<?php

/**
 * Tracks downloads of packages from swiftmailer.org.
 * 
 * @author Chris Corbyn
 */
class Swift_Website_SimpleDownloadTracker
  implements Swift_Website_DownloadTracker
{
  
  /**
   * Register a new download event for $download.
   * 
   * @param Swift_Website_Download $download
   */
  public function trackDownload(Swift_Website_Download $download)
  {
    $event = new DownloadEvent();
    //TODO: Figure out how to hack Doctrine to allow setDownload()
    $event->Download = $download;
    $event->setTimeCreated(time());
    $event->save();
  }
  
  /**
   * Returns an associative array for analysis by hour.
   * 
   * If $downloads is specified the results apply only to these downloads.
   * 
   * If $dateMin or $dateMax are specified then the date range is restricted.
   * 
   * @param Swift_Website_Download[] $downloads
   * @param int $dateMin
   * @param int $dateMax
   * 
   * @return array
   */
  public function getHourlyStatistics($downloads = array(), $dateMin = 0,
    $dateMax = 0)
  {
    //TODO
  }
  
  /**
   * Returns an associative array for analysis by day.
   * 
   * If $downloads is specified the results apply only to these downloads.
   * 
   * If $dateMin or $dateMax are specified then the date range is restricted.
   * 
   * @param Swift_Website_Download[] $downloads
   * @param int $dateMin
   * @param int $dateMax
   * 
   * @return array
   */
  public function getDailyStatistics($downloads = array(), $dateMin = 0,
    $dateMax = 0)
  {
    //TODO
  }
  
  /**
   * Returns an associative array for analysis by week.
   * 
   * If $downloads is specified the results apply only to these downloads.
   * 
   * If $dateMin or $dateMax are specified then the date range is restricted.
   * 
   * @param Swift_Website_Download[] $downloads
   * @param int $dateMin
   * @param int $dateMax
   * 
   * @return array
   */
  public function getWeeklyDownloadStatistics($downloads = array(),
    $dateMin = 0, $dateMax = 0)
  {
    //TODO
  }
  
  /**
   * Returns an associative array for analysis by month.
   * 
   * If $downloads is specified the results apply only to these downloads.
   * 
   * If $dateMin or $dateMax are specified then the date range is restricted.
   * 
   * @param Swift_Website_Download[] $downloads
   * @param int $dateMin
   * @param int $dateMax
   * 
   * @return array
   */
  public function getMonthlyDownloadStatistics($downloads = array(),
    $dateMin = 0, $dateMax = 0)
  {
    //TODO
  }
  
}
