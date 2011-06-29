a:30:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"Sending a basic email";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:36;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:580:"
Sending an email with Swift Mailer is a simple process.  You basically create a new instance of Swift with a connection type of your choice, you then create a message and ask Swift to deliver it to one or more recipients.  Perhaps if you're not familiar with OOP this snippet may look a little daunting but it should hopefully soon become familiar to you and feel quite natural.  EasySwift, packaged inside the library when you download it, provides a wrapper which makes this even simpler - at the expense of flexibility.  Check the EasySwift documentation for more information.";}i:2;i:37;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:617;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:617;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:"[TODO: Create EasySwift documentation]";}i:2;i:619;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:657;}i:12;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:415:"
<?php

//Load in the files we'll need
require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";

//Start Swift
$swift =& new Swift(new Swift_Connection_SMTP("smtp.your-host.tld"));

//Create the message
$message =& new Swift_Message("My subject", "My body");

//Now check if Swift actually sends it
if ($swift->send($message, "foo@bar.tld", "me@mydomain.com")) echo "Sent";
else echo "Failed";


";i:1;s:3:"php";}i:2;i:664;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1091;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:265:"This is the most basic way to send an email with Swift without using the EasySwift wrapper (which does make things simpler if you don't like OOP).  As we progress through these tutorials you'll see that you may want to do a little more error checking along the way.";}i:2;i:1093;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1358;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1358;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:188:"If you're using PHP5 (recommended, if you can) then there's no need to worry about using the reference operator.  It used in the example above merely for backwards compatibility with PHP4.";}i:2;i:1360;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1548;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1548;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:157:"Swift's send() method returns an integer which indicates how many recipients were accepted for delivery at the server.  If it returns zero, nothing was sent.";}i:2;i:1550;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1707;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1707;}i:23;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1709;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"NOTE:";}i:2;i:1711;}i:25;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1716;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:302:" Just because your server accepts a message for delivery, it does NOT mean that the recipient is guaranteed to get the message.  The message will pass through various other servers by a similar process on its way to the intended recipient.  Any one of those servers could choose to reject the message.
";}i:2;i:1718;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2019;}i:28;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2019;}i:29;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2019;}}