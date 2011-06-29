a:21:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:29:"Personalizing recipient names";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:44;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:350:"
When you send an email with Swift you can just provide the address as a string.  However, if you want to send a personal name along with the address you will need to use the Swift_Address class*.  This class is simply making life easier for Swift to ensure addresses are given in the correct format when used in message headers and when sent to the ";}i:2;i:45;}i:8;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:395;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:" server.  It's extremely basic and simply takes one or two arguments in the constructor.";}i:2;i:399;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:487;}i:11;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:506:"
<?php

//Load in the files we'll need
require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";

//Start Swift
$swift =& new Swift(new Swift_Connection_SMTP("smtp.your-host.tld"));

//Create the message
$message =& new Swift_Message("My subject", "My body");

//Swift_Address can accept an email address and a name, or just an email address
if ($swift->send($message, new Swift_Address("foo@bar.tld", "Foo Bar"), new Swift_Address("me@mydomain.com"))) echo "Sent";
else echo "Failed";


";i:1;s:3:"php";}i:2;i:494;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1012;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"* You cannot pass a string like";}i:2;i:1014;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1045;}i:15;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:23:""Foo Bar <foo@bar.com>"";}i:2;i:1045;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1045;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:62:"to Swift as of version 3; you must use Swift_Address instead.
";}i:2;i:1072;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1133;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1133;}i:20;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1133;}}