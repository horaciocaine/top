a:28:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:30:"Sending to mulitple recipients";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:45;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:162:"
Sending to multiple recipients, or including Cc and Bcc recipients is handled by passing an instance of Swift_RecipientList as the recipient parameter in send().";}i:2;i:46;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:208;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:208;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:111:"Swift_RecipientList() contains the methods addTo(), addCc() and addBcc() along with removeTo(), removeCc() etc.";}i:2;i:210;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:321;}i:12;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:417:"
require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";

$swift =& new Swift(new Swift_Connection_SMTP("host.tld"));

$message =& new Swift_Message("My subject", "My body");

$recipients =& new Swift_RecipientList();
$recipients->addTo("foo@bar.com", "Foo Bar");
$recipients->addCc("zip@button.com", "Zip Button");

$swift->send($message, $recipients, new Swift_Address("me@address.tld", "Me"));
";i:1;s:3:"php";}i:2;i:328;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:757;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"When you send to multiple ";}i:2;i:759;}i:15;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:785;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"To:";}i:2;i:787;}i:17;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:790;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:79:" recipients in this way, all recipients will see each other's addresses in the ";}i:2;i:792;}i:19;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:871;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"To:";}i:2;i:873;}i:21;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:876;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:157:" field.  If you're sending out a batch email for marketing purposes, or a newsletter then you will want to perform the same process, but replace send() with ";}i:2;i:878;}i:23;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:18:"v3:tutorials:batch";i:1;s:11:"batchSend()";}i:2;i:1035;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:".
";}i:2;i:1069;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1070;}i:26;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1070;}i:27;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1070;}}