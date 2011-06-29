a:38:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:29:"Caching Strategies - Overview";i:1;i:2;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:42;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:43;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"Generating compliant ";}i:2;i:44;}i:9;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"MIME";}i:2;i:65;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:294:" data (i.e. the email itself) is thirsty work, especially for non-ascii character sets.  Swift Mailer caches data where it can so that when sending the same email to lot of recipients things run a little faster.  There are two caching strategies offered by default in Swift Mailer.  One uses a ";}i:2;i:69;}i:11;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"PHP";}i:2;i:363;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:199:" array to hold cached data.  The other writes data to disk.  It would be easy to extend Swift to support a new cache type if you have a reason to cache data somewhere other than on disk or in memory.";}i:2;i:366;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:565;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:565;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:109:"Caching to disk is what Swift Mailer does by default, but only if it can find a temporary directory (i.e. if ";}i:2;i:567;}i:16;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:676;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"sys_get_temp_dir()";}i:2;i:678;}i:18;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:696;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:71:" is available).  You can override its default caching strategy however.";}i:2;i:698;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:769;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:769;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:322:"Caching to disk offers one major advantage over the array cache - Memory usage!  If you use the array cache Swift Mailer will save all data in memory which is a big waste.  When using the disk cache Swift Mailer will perform file-streaming operations for complex algorithms such as encoding a large attachment file.  On a ";}i:2;i:771;}i:23;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"PHP";}i:2;i:1093;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:118:" installation with an 8MB memory limit sending attachments would be very prohibited if disk caching was not available.";}i:2;i:1096;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1214;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1214;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:190:"The following chart shows the memory used when sending attachments ranging in size from 0MiB to 100MiB.  The blue line represents the Disk cache, and the red line represents the Array cache.";}i:2;i:1216;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1406;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1406;}i:30;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:43:"v4:caching:swiftmailerattachmentmemory2.png";i:1;s:45:"Swift Mailer Memory Benchmark for Cache Types";i:2;N;i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:1408;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1501;}i:32;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1501;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:178:"The code used to generate the benchmark results is shown below.  It generates binary files full of random data, attaches them and sends them whilst checking the peak memory used.";}i:2;i:1503;}i:34;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1681;}i:35;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:1314:"
<?php

require_once '../../lib/swift_required.php';

//Using sendmail, but SmtpTransport should be just the same
$mailer = new Swift_Mailer(new Swift_SendmailTransport('/usr/sbin/sendmail -bs'));

//Define a cache type
$type = 'array';

//Use the correct cache type
Swift_Preferences::getInstance()->setCacheType($type);

//Create a CSV log file
$log = fopen($type . '-results.csv', 'w');

//Write headings
fwrite($log, '"Attachment Size (MiB)","Memory (MiB)"' . "\n");

$increment = 1;

for ($i = 0; $i <= 100; $i += $increment)
{
  //Non-linear scale
  if ($i >= 10) $increment = 10;
  
  //Create a file full of random binary
  `dd if=/dev/random of=attach.ext bs=1048576 count=$i`;

  //Create a message with the random binary attached
  $message = Swift_Message::newInstance()
    ->setSubject('Swift Mailer Benchmark')
    ->setTo(array('chris@w3style.co.uk' => 'Chris Corbyn'))
    ->setFrom(array('chris@w3style.co.uk' => 'Chris Corbyn'))
    ->setBody("Benchmark test")
    ->attach(Swift_Attachment::fromPath('attach.ext'))
    ;

  //Send it with Sendmail
  $mailer->send($message);

  //Record result
  $usage = round( memory_get_peak_usage() / (1024 * 1024), 2);
  fwrite($log, sprintf("\"%s\",\"%s\"\n", $i, $usage));
  printf("MEM @ {$i} MiB = %s MiB\n", $usage);
}

//Close the CSV
fclose($log);

";i:1;s:3:"php";}i:2;i:1688;}i:36;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3015;}i:37;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3015;}}