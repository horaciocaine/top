a:54:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:30:"Sending to multiple recipients";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:45;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:46;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"In the previous tutorials you may have read, we";}i:2;i:47;}i:9;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:94;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:222:"ve been providing recipient addresses using a string, or using the Swift_Address class.  However, Swift can send to Bcc recipients, Cc recipients and multiple To recipients.  For this, we use the Swift_RecipientList class.";}i:2;i:95;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:317;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:317;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:177:"The Swift_RecipientList class is just a nice container which allows you to add an remove Cc, To and Bcc recipients with ease... it makes Swift that tad fatser too since it doesn";}i:2;i:319;}i:14;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:496;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:"t need to worry about parsing out any delimited strings!";}i:2;i:497;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:553;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:553;}i:18;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:555;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"NOTE:";}i:2;i:557;}i:20;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:562;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:121:" Using Bcc or Cc recipients is NOT the ideal way to deliver a marketing email or newsletter to multiple recipients.  Use ";}i:2;i:564;}i:22;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:18:"v3:tutorials:batch";i:1;s:11:"batchSend()";}i:2;i:685;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:" for that task.";}i:2;i:719;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:734;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:734;}i:26;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:736;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"Sending to multiple To addresses:";}i:2;i:738;}i:28;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:771;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:773;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:779;}i:31;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:628:"

require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";

$swift =& new Swift(new Swift_Connection_SMTP("host.tld"));

$message =& new Swift_Message("My subject", "My message body");

//Start a new list
$recipients =& new Swift_RecipientList();
$recipients->addTo("foo@bar.com", "Foo Bar"); //We can give a name along with the address
$recipients->addTo("joe@bloggs.tld"); //or we can just add the address
$recipients->addTo("lisa-smith@domain.tld", "Lisa");

//The number of successful recipients is returned here (hopefully 3!)
$number_sent = $swift->send($message, $recipients, "my-address@domain.tld");
";i:1;s:3:"php";}i:2;i:779;}i:32;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1419;}i:33;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1421;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"Including some Cc recipients:";}i:2;i:1423;}i:35;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1452;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:1454;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1460;}i:38;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:546:"

require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";

$swift =& new Swift(new Swift_Connection_SMTP("host.tld"));

$message =& new Swift_Message("My subject", "My message body");

$recipients =& new Swift_RecipientList();
$recipients->addTo("foo@bar.com", "Foo Bar");
//Use addCc()
$recipients->addCc("fred@perry.tld");
$recipients->addCc("lisa-smith@domain.tld", "Lisa");

//The number of successful recipients is returned here (hopefully 3!)
$number_sent = $swift->send($message, $recipients, "my-address@domain.tld");
";i:1;s:3:"php";}i:2;i:1460;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2018;}i:40;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:2020;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:"And Bcc recipients just the same way!";}i:2;i:2022;}i:42;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:2059;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:2061;}i:44;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2067;}i:45;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:533:"

require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";

$swift =& new Swift(new Swift_Connection_SMTP("host.tld"));

$message =& new Swift_Message("My subject", "My message body");

$recipients =& new Swift_RecipientList();
$recipients->addTo("foo@bar.com", "Foo Bar");
$recipients->addCc("joe@bloggs.tld");
$recipients->addBcc("lisa-smith@domain.tld", "Lisa");

//The number of successful recipients is returned here (hopefully 3!)
$number_sent = $swift->send($message, $recipients, "my-address@domain.tld");
";i:1;s:3:"php";}i:2;i:2067;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2612;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:94:"The use of the reference operator (=&) in the above example code applies only to PHP4.  If you";}i:2;i:2614;}i:48;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:2708;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"re using PHP5, leave it out.";}i:2;i:2709;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:2737;}i:51;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2737;}i:52;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2737;}i:53;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2737;}}