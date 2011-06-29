a:16:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"Sending a Basic Email";i:1;i:2;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:34;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"
First you need to include the ";}i:2;i:35;}i:8;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:66;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"swift_required.php";}i:2;i:67;}i:10;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:85;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:214:" file, then you create an instance of the Mailer using any of the Transports (probably Swift_SmtpTransport, Swift_SendmailTransport or Swift_MailTransport).  Then you create a a message and send it with the Mailer.";}i:2;i:86;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:300;}i:13;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:421:"
<?php

//Include this needed file
require_once '/path/to/swift/lib/swift_required.php';

//Start the mailer
$mailer = new Swift_Mailer(new Swift_SmtpTransport('smtp.your-isp.tld'));

//Create a message
$message = Swift_Message::newInstance('Your subject', 'Your Message')
  ->setFrom(array('your@address.tld' => 'Your Name'))
  ->setTo(array('someone@address.tld' => 'Person name'));

//Send it
$mailer->send($message);
";i:1;s:3:"php";}i:2;i:307;}i:14;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:740;}i:15;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:740;}}