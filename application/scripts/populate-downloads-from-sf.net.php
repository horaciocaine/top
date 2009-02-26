<?php

require_once dirname(__FILE__) . '/../console.php';

define('SF_URL', 'http://sourceforge.net/project/showfiles.php?group_id=170045&package_id=193923');

printf("Reading page %s %s", SF_URL, PHP_EOL);

$client = new Swift_Website_SimpleHttpClient();

$pageContents = $client->getBody(SF_URL, Swift_Website_HttpClient::METHOD_GET);

printf("Scraping page contents for downloads %s", PHP_EOL);

//

printf("All done %s", PHP_EOL);
