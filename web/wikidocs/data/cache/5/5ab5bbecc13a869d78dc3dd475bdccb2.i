a:55:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"Sending attachments";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:34;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:35;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"Luckily, attachments are much like ";}i:2;i:36;}i:9;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:12:"v3:multipart";i:1;s:33:"MIME parts in a multipart message";}i:2;i:71;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:167:", expect they are not displayed by default and are encoded in a special way.  You attach files to an email using the attach() method in swift like you do when you add ";}i:2;i:121;}i:11;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"MIME";}i:2;i:288;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:188:" parts, but you use the Swift_Message_Attachment class rather than the Swift_Message_Part class.  Swift then includes the message as an attachment, rather than a textual part of the email.";}i:2;i:292;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:480;}i:14;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:496:"
<?php

require_once "lib/Swift.php";
require_once "lib/Swift/Connection/NativeMail.php"; //There are various connections to use

$swift =& new Swift(new Swift_Connection_NativeMail());

$message =& new Swift_Message("My subject");
$message->attach(new Swift_Message_Part("I have attached a file to this message!"));
$message->attach(new Swift_Message_Attachment(
  file_get_contents("foo.pdf"), "foo.pdf", "application/pdf"));

$swift->send($message, "my-friend@host.tld", "me@my-domain.tld");

";i:1;s:3:"php";}i:2;i:487;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:995;}i:16;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:997;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"TIP:";}i:2;i:999;}i:18;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1003;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:" Notice that in the above example the attachment has been created using the file";}i:2;i:1005;}i:20;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:1085;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:82:"s contents.  This is how older versions of Swift used to handle attachments and it";}i:2;i:1086;}i:22;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:1168;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:102:"s not brilliant for large files because much memory gets used whilst encoding the file and reading it.";}i:2;i:1169;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1271;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1271;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:116:"To keep memory down we can make a small adjustment and make use of the Swift_File class.  The Swift_File class doesn";}i:2;i:1273;}i:27;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:1389;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"t just blindly load in all the file";}i:2;i:1390;}i:29;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:1425;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:"s data, then pass it to an encoder, instead, it ";}i:2;i:1426;}i:31;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1474;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"streams";}i:2;i:1475;}i:33;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1482;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:" the file";}i:2;i:1483;}i:35;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:1492;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:199:"s data through the encoder keeping a maximum of 8192 bytes from the original file in memory at any one time - massively reducing the load on your script and speeding things up a bit.  Make use of it!";}i:2;i:1493;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1692;}i:38;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:521:"
<?php

require_once "lib/Swift.php";
require_once "lib/Swift/Connection/NativeMail.php"; //There are various connections to use

$swift =& new Swift(new Swift_Connection_NativeMail());

$message =& new Swift_Message("My subject");
$message->attach(new Swift_Message_Part("I have attached a file to this message!"));

//Use the Swift_File class
$message->attach(new Swift_Message_Attachment(
  new Swift_File("foo.pdf"), "foo.pdf", "application/pdf"));

$swift->send($message, "my-friend@host.tld", "me@my-domain.tld");

";i:1;s:3:"php";}i:2;i:1699;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2232;}i:40;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:2234;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"TIP:";}i:2;i:2236;}i:42;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:2240;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:187:" Swift_File can be used as a substitute for passing strings into a message body too.  Say for example, you have an email template saved as email.html, you can create a mime part by doing:";}i:2;i:2242;}i:44;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2429;}i:45;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:77:"
$part =& new Swift_Message_Part(new Swift_File("email.html"), "text/html");
";i:1;s:3:"php";}i:2;i:2436;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2525;}i:47;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:2527;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"NOTE:";}i:2;i:2529;}i:49;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:2534;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:78:" Be sure to read the notes about Disk Caching in the tips and tricks section: ";}i:2;i:2536;}i:51;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:14:"v3:tips_memory";i:1;N;}i:2;i:2614;}i:52;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2632;}i:53;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2633;}i:54;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2633;}}