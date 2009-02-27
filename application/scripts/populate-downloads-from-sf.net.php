<?php

require_once dirname(__FILE__) . '/../console.php';

define('SF_URL', 'http://sourceforge.net/project/showfiles.php?group_id=170045&package_id=193923');

printf("Reading page %s %s", SF_URL, PHP_EOL);

$client = new Swift_Website_SimpleHttpClient();

$pageContents = $client->getBody(SF_URL, Swift_Website_HttpClient::METHOD_GET);

printf("Scraping page contents for downloads %s", PHP_EOL);

$files = array();

//Page is too big to feasibly use RegExp
while (strlen($pageContents) > 0)
{
  if (false === $tbodyOpenPos = strpos($pageContents, '<tbody class="show"'))
  {
    break;
  }
  
  if (false === $tbodyClosePos = strpos($pageContents, '</tbody>') + 8)
  {
    break;
  }
  
  $fragment = substr($pageContents, $tbodyOpenPos, $tbodyClosePos - $tbodyOpenPos);
  
  $pageContents = substr($pageContents, $tbodyClosePos);

  if (!preg_match('~title="View notes">Notes</a></span>\s*<small>\((\d{4}-\d{2}-\d{2} \d{2}:\d{2})\)\s*</small>~s', $fragment, $matches))
  {
    printf("Failed to parse timestamp %s", PHP_EOL);
    exit(1);
  }
  
  $date = $matches[1];

  if (!preg_match('~<a id="showfiles_download_file.*?(Swift-.*?\.tar\.gz).*?<td >(\d+)</td>~s', $fragment, $matches))
  {
    printf("Failed to parse file info %s", PHP_EOL);
    exit(1);
  }
  
  $filename = $matches[1];
  $size = $matches[2];
  
  $files[$filename] = array(
    'date' => $date,
    'size' => $size
  );
}

printf("Scraped page contents and found %d files %s", count($files), PHP_EOL);

foreach ($files as $name => $details)
{
  printf("Adding file: Name=%s, Date=%d, Size=%d %s", $name, $details['date'], $details['size'], PHP_EOL);
  
  $download = new Download();
  $download->setName($name);
  $download->setSize($details['size']);
  $download->setSource(Download::SOURCE_SOURCEFORGE);
  $download->setTimeCreated(strtotime($details['date']));
  $download->save();
}

printf("All done %s", PHP_EOL);
