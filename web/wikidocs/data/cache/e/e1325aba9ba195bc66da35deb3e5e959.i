a:64:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"Sending a batch email";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:36;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:624:"
If you try to deliver an email to more than one recipient by using the Swift_RecipientList class in combination with Swift's send() method, you need to be aware that all the recipients of the message will be able to see each other's addresses in their mail clients.  This is fine for social/work emails, but if you were sending something like a newsletter or a marketing campaign it wouldn't look great and could even land you in trouble for breach of data protection.  To avoid any such problems, you want to send your email using batchSend() rather than send().  You still use the Swift_RecipientList class, but only the ";}i:2;i:37;}i:8;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:661;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"To:";}i:2;i:663;}i:10;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:666;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:" recipients are actually used.";}i:2;i:668;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:698;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:698;}i:14;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:700;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"NOTE:";}i:2;i:702;}i:16;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:707;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:211:" This uses slightly more bandwidth than send() because a different email needs to be sent to each recipient.  It should by no means be a slow process unless the server is already processing a heavy load however.";}i:2;i:709;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:920;}i:19;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:442:"
require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";

$swift =& new Swift(new Swift_Connection_SMTP("smtp.host.tld"));

$message =& new Swift_Message("My subject", "My body");

$recipients =& new Swift_RecipientList();
$recipients->addTo("joe@bloggs.tld");
$recipients->addTo("zip@button.tld");
//NOTE that Cc and Bcc recipients are IGNORED in a batch send

$swift->batchSend($message, $recipients, "my@address.com");
";i:1;s:3:"php";}i:2;i:927;}i:20;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1381;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:103:"batchSend() returns an integer indicating how many recipients were accepted for delivery at the server.";}i:2;i:1383;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1486;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1486;}i:24;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1488;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"TIP:";}i:2;i:1490;}i:26;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1494;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:85:" I'm an idiot for even bringing this up*, but you can deliver your email really fast ";}i:2;i:1496;}i:28;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:1581;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:" as in ";}i:2;i:1583;}i:30;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1590;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"really fast";}i:2;i:1592;}i:32;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1603;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:" to thousands of recipients if you specify the ";}i:2;i:1605;}i:34;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1652;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"To:";}i:2;i:1654;}i:36;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1657;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:" address as ";}i:2;i:1659;}i:38;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1671;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"undisclosed-recipients:;";}i:2;i:1673;}i:40;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1697;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:" then use send().
";}i:2;i:1699;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1717;}i:43;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:24:"undisclosed-recipients:;";}i:2;i:1717;}i:44;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1717;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"
Note the colon-semi-colon ending!";}i:2;i:1745;}i:46;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1779;}i:47;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1779;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"Here's how you do that.";}i:2;i:1781;}i:49;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1804;}i:50;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:441:"
require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";

$swift =& new Swift(new Swift_Connection_SMTP("smtp.host.tld"));

$message =& new Swift_Message("My subject", "My body");

//HERE'S THE TRICK!
$message->setTo("undisclosed-recipients:;");

$recipients =& new Swift_RecipientList();
$recipients->addTo("joe@bloggs.tld");
$recipients->addTo("zip@button.tld");

$swift->send($message, $recipients, "my@address.com");
";i:1;s:3:"php";}i:2;i:1811;}i:51;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2264;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"* ";}i:2;i:2266;}i:53;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:2268;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"Why am I an idiot?";}i:2;i:2270;}i:55;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:2288;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:164:" Because it's bad ;)  You shouldn't do it and you may be upset when you find messages disappearing into people's Junk folders.  A better approach may be to set the ";}i:2;i:2290;}i:57;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:2454;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"To:";}i:2;i:2456;}i:59;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:2459;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:156:" header to something which exists, but the safest option is just to include the actual recipient's address in the headers which is what happens by default.
";}i:2;i:2461;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2616;}i:62;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2616;}i:63;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2616;}}