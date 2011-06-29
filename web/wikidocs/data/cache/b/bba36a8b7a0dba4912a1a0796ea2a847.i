a:46:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:25:"Sending a Multipart Email";i:1;i:2;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:38;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:39;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:"First you need to include the ";}i:2;i:40;}i:9;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:70;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"swift_required.php";}i:2;i:71;}i:11;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:89;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:236:" file, then you create an instance of the Mailer using any of the Transports (probably Swift_SmtpTransport, Swift_SendmailTransport or Swift_MailTransport).  Then you create a a message, add some parts to it and send it with the Mailer.";}i:2;i:90;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:326;}i:14;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:510:"
<?php

//Include this needed file
require_once '/path/to/swift/lib/swift_required.php';

//Start the mailer
$mailer = new Swift_Mailer(new Swift_SendmailTransport('/usr/sbin/sendmail -oi -t'));

//Create a message
$message = Swift_Message::newInstance('Your subject')
  ->addPart('Your text message', 'text/plain')
  ->addPart('Your HTML message', 'text/html')
  ->setFrom(array('your@address.tld' => 'Your Name'))
  ->setTo(array('someone@address.tld' => 'Person name'));

//Send it
$mailer->send($message);
";i:1;s:3:"php";}i:2;i:333;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:855;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:62:"Now would probably be a good time to introduce the concept of ";}i:2;i:857;}i:17;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:919;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"everything";}i:2;i:920;}i:19;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:930;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"s an attachment";}i:2;i:931;}i:21;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:946;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:94:".  Users of version 3 will be familiar with this, but you can also add mime parts in this way:";}i:2;i:947;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1041;}i:24;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:298:"
$message = Swift_Message::newInstance('Your subject')
  ->attach(new Swift_MimePart('Your text message', 'text/plain'))
  ->attach(new Swift_MimePart('Your HTML message', 'text/html'))
  ->setFrom(array('your@address.tld' => 'Your Name'))
  ->setTo(array('someone@address.tld' => 'Person name'));
";i:1;s:3:"php";}i:2;i:1048;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1358;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"Swift knows how to attach a mime part to the message.";}i:2;i:1360;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1413;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1413;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:"Finally, you can add one part just like you";}i:2;i:1415;}i:30;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:1458;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:62:"re sending a basic message, then attach your alternative part:";}i:2;i:1459;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1521;}i:33;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:248:"
$message = Swift_Message::newInstance('Your subject', 'Your HTML message', 'text/html')
  ->addPart('Your text message', 'text/plain')
  ->setFrom(array('your@address.tld' => 'Your Name'))
  ->setTo(array('someone@address.tld' => 'Person name'));
";i:1;s:3:"php";}i:2;i:1528;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1788;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"All three approaches yield the same end result.  I";}i:2;i:1790;}i:36;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:1840;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:78:"d prefer the first example over the second two, but understanding how you can ";}i:2;i:1841;}i:38;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1919;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"compose";}i:2;i:1920;}i:40;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1927;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:91:" a message by attaching things to it will help you to grasp some other concepts later on ;)";}i:2;i:1928;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:2019;}i:43;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2019;}i:44;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2019;}i:45;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2019;}}