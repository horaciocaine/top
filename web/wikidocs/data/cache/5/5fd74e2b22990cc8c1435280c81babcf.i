a:44:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"Sending a HTML E-Mail";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:36;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:37;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"Sending a ";}i:2;i:38;}i:9;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"HTML";}i:2;i:48;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:104:" email with Swift is just as easy as sending a plain-text email.  You just need to tell the Message that";}i:2;i:52;}i:11;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:156;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"s it";}i:2;i:157;}i:13;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:161;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"s in ";}i:2;i:162;}i:15;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"HTML";}i:2;i:167;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:76:" format and everything else is the same as if you were sending plain-text.  ";}i:2;i:171;}i:17;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"HTML";}i:2;i:247;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:" has it";}i:2;i:251;}i:19;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:258;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"s advantages in that it";}i:2;i:259;}i:21;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:282;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:99:"s easy to create a layout with images and styles, but not all mail clients will read it, and if you";}i:2;i:283;}i:23;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:382;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"re not careful, you might be increasing the risk of being blocked as spam.  See ";}i:2;i:383;}i:25;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:12:"v3:tips_spam";i:1;N;}i:2;i:463;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:479;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:480;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:480;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:55:"A common pitfall is that people forget you need to use ";}i:2;i:482;}i:30;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:537;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"<br />";}i:2;i:539;}i:32;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:545;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:" tags in place of real line breaks in ";}i:2;i:547;}i:34;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"HTML";}i:2;i:585;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:110:" emails.  I have had numerous support requests asking why everything was coming out on one line in the past ;)";}i:2;i:589;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:699;}i:37;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:458:"
<?php

require_once "lib/Swift/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";

$swift =& new Swift(new Swift_Connection_SMTP("server.tld", 25));

$message =& new Swift_Message("Some subject", "Your message <u>here</u>", "text/html");

if ($swift->send($message, "recipient@domain.tld", "you@home.tld"))
{
    echo "Message sent";
}
else
{
    echo "Message failed to send";
}

//It's polite to do this when you're finished
$swift->disconnect();

";i:1;s:3:"php";}i:2;i:706;}i:38;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1176;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:90:"You can alternatively set the text/html type on the message by using the following method:";}i:2;i:1178;}i:40;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1268;}i:41;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:108:"
$message =& new Swift_Message("Some subject", "Message goes here");
$message->setContentType("text/html");
";i:1;s:3:"php";}i:2;i:1275;}i:42;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1396;}i:43;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1396;}}