a:53:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:29:"Sending to Several Recipients";i:1;i:2;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:42;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:43;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:103:"This is much the same as sending a basic email.  You simply add more addresses to the array of setTo().";}i:2;i:44;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:147;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:147;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:"First you need to include the ";}i:2;i:149;}i:12;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:179;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"swift_required.php";}i:2;i:180;}i:14;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:198;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:214:" file, then you create an instance of the Mailer using any of the Transports (probably Swift_SmtpTransport, Swift_SendmailTransport or Swift_MailTransport).  Then you create a a message and send it with the Mailer.";}i:2;i:199;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:413;}i:17;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:516:"
<?php

//Include this needed file
require_once '/path/to/swift/lib/swift_required.php';

//Start the mailer
$mailer = new Swift_Mailer(new Swift_SmtpTransport('smtp.your-isp.tld'));

//Create a message
$message = Swift_Message::newInstance('Your subject', 'Your Message')
  ->setFrom(array('your@address.tld' => 'Your Name'))
  ->setTo(array(
    'someone@address.tld' => 'Person name',
    'other@address.tld' => 'Other name',
    'more@address.tld' => 'Yet another name'
  ));

//Send it
$mailer->send($message);
";i:1;s:3:"php";}i:2;i:420;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:948;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:83:"This will result in a single email being sent to all of those addresses, where the ";}i:2;i:950;}i:20;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1033;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"To:";}i:2;i:1034;}i:22;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1037;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:" header shows all addresses.";}i:2;i:1038;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1066;}i:25;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:217:"
Subject: Your subject
From: Your Name <your@address.tld>
To: Person name <someone@address.tld>, Other name <other@address.tld>, Yet another name <more@address.tld>
-------------------------------------

Your message
";i:1;N;}i:2;i:1073;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1298;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:62:"If you want to include some Cc recipients then call setCc()...";}i:2;i:1300;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1362;}i:29;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:416:"
//Create a message
$message = Swift_Message::newInstance('Your subject', 'Your Message')
  ->setFrom(array('your@address.tld' => 'Your Name'))
  ->setTo(array(
    'someone@address.tld' => 'Person name',
    'other@address.tld' => 'Other name',
    'more@address.tld' => 'Yet another name'
  ))
  ->setCc(array(
    'copied@address.tld' => 'Copied recipient',
    'another-copy@address.tld' => 'Another copy'
  ));
";i:1;s:3:"php";}i:2;i:1369;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1797;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:61:"This results in the following message sent to all recipients:";}i:2;i:1799;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1860;}i:33;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:300:"
Subject: Your subject
From: Your Name <your@address.tld>
To: Person name <someone@address.tld>, Other name <other@address.tld>, Yet another name <more@address.tld>
Cc: Copied recipient <copied@address.tld>, Another copy <another-copy@address.tld>
-------------------------------------

Your message
";i:1;N;}i:2;i:1867;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2175;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:84:"And finally, if you want to include some Bcc recipients you need to call setBcc()...";}i:2;i:2177;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2261;}i:37;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:417:"
//Create a message
$message = Swift_Message::newInstance('Your subject', 'Your Message')
  ->setFrom(array('your@address.tld' => 'Your Name'))
  ->setTo(array(
    'someone@address.tld' => 'Person name',
    'other@address.tld' => 'Other name',
    'more@address.tld' => 'Yet another name'
  ))
  ->setBcc(array(
    'copied@address.tld' => 'Copied recipient',
    'another-copy@address.tld' => 'Another copy'
  ));
";i:1;s:3:"php";}i:2;i:2268;}i:38;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2697;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:128:"Unlike Cc recipients, Bcc recipients are hidden from everyone but themselves so what happens here is that all recipients in the ";}i:2;i:2699;}i:40;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2827;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"To:";}i:2;i:2828;}i:42;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2831;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:" field get this message:";}i:2;i:2832;}i:44;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2856;}i:45;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:217:"
Subject: Your subject
From: Your Name <your@address.tld>
To: Person name <someone@address.tld>, Other name <other@address.tld>, Yet another name <more@address.tld>
-------------------------------------

Your message
";i:1;N;}i:2;i:2863;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3088;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:59:"And each recipient in the Bcc field gets their own message:";}i:2;i:3090;}i:48;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3149;}i:49;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:260:"
Subject: Your subject
From: Your Name <your@address.tld>
To: Person name <someone@address.tld>, Other name <other@address.tld>, Yet another name <more@address.tld>
Bcc: Copied recipient <copied@address.tld>
-------------------------------------

Your message
";i:1;N;}i:2;i:3156;}i:50;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:266:"
Subject: Your subject
From: Your Name <your@address.tld>
To: Person name <someone@address.tld>, Other name <other@address.tld>, Yet another name <more@address.tld>
Bcc: Yet another copy <another-copy@address.tld>
-------------------------------------

Your message
";i:1;N;}i:2;i:3431;}i:51;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3705;}i:52;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3705;}}