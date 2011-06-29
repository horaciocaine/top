a:37:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:32:"Embedding images in HTML E-mails";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:47;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:86:"
Once you have learned how to add attachments to an email with Swift, and how to send ";}i:2;i:48;}i:8;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"HTML";}i:2;i:134;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:" emails with Swift, this will probably make sense.  Using ";}i:2;i:138;}i:10;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"HTML";}i:2;i:196;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:" it's easy to add an ";}i:2;i:200;}i:12;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:221;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"<img .. />";}i:2;i:223;}i:14;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:233;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:449:" tag to the message and link it to a remote image on your web server.  However, you can attach the image and link to the attachment directly.  This has it benefits, as well as its drawbacks (bandwidth!).  Many mail clients now block remote images by default, so embedding images could mean that your image is more likely to be received.  However, not all mail clients actually support embedded imaging so your image may just appear as an attachment.";}i:2;i:235;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:684;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:684;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:153:"Don't try to replace entire e-mails with images.  You'll risk being blocked as spam and you'll also be hindering accessibility to the intended recipient.";}i:2;i:686;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:839;}i:20;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:839;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:90:"To embed an image, it's a bit of a combination of the techniques you've seen for creating ";}i:2;i:841;}i:22;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"HTML";}i:2;i:931;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:" emails and adding attachments.";}i:2;i:935;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:966;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:966;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:108:"You need to know the path to the image on the disk of the server, not the path as it would be accessed over ";}i:2;i:968;}i:27;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"HTTP";}i:2;i:1076;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:1080;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1081;}i:30;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:679:"
<?php

require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";

$smtp =& new Swift_Connection_SMTP("your.smtp.tld", 25);

$swift =& new Swift($smtp);

$message =& new Swift_Message("Your subject");
$message->attach(new Swift_Message_Part("This email contains this image:<br />
<img src=\"" . $message->attach(new Swift_Message_Image(new Swift_File("/path/to/image.jpg"))) . "\" /><br />
which is embedded", "text/html"));

if ($swift->send($message, new Swift_Address("joe@bloggs.com", "Joe"), new Swift_Address("system@domain.tld", "System")))
{
    echo "Message sent";
}
else
{
    echo "Sending failed";
}

//recommended to do this
$swift->disconnect();
";i:1;s:3:"php";}i:2;i:1088;}i:31;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1779;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:63:"If that looks all bunched up, it's basically the same as doing:";}i:2;i:1781;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1844;}i:34;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:727:"
<?php

require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";

$smtp =& new Swift_Connection_SMTP("your.smtp.tld", 25);

$swift =& new Swift($smtp);

$message =& new Swift_Message("Your subject");

$img =& new Swift_Message_Image(new Swift_File("/path/to/image.jpg"));

$src = $message->attach($img);

$body =& new Swift_Message_Part("This email contains this image:<br />
<img src=\"" . $src . "\" /><br />
which is embedded", "text/html");


$message->attach($body);

if ($swift->send($message, new Swift_Address("joe@bloggs.com", "Joe"), new Swift_Address("system@domain.tld", "System")))
{
    echo "Message sent";
}
else
{
    echo "Sending failed";
}

//recommended to do this
$swift->disconnect();
";i:1;s:3:"php";}i:2;i:1851;}i:35;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2590;}i:36;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2590;}}