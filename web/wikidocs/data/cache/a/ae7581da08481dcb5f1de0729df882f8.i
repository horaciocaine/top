a:31:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:32:"Sending a message to a recipient";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:47;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:177:"
Sending messages in Swift is extremely simple.  You call the send() method, which only has 3 parameters.  One is the message, one is the recipient, and the other is the sender.";}i:2;i:48;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:225;}i:9;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:232:"
$swift =& new Swift(new Swift_Connection_SMTP("host.tld"));

$message =& new Swift_Message("My subject", "My body");

$sent = $swift->send($message, "recipient@address.tld", "sender@address.tld");
echo "Sent to $sent recipients";

";i:1;s:3:"php";}i:2;i:232;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:476;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"send() returns the number of recipients it delivered to message to successfully.";}i:2;i:478;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:558;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:558;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:220:"In the above example we used strings for the email addresses, however, using the Swift_Address class we have a little more flexibility over the format of the address.  We can have a personal name in the address like so: ";}i:2;i:560;}i:15;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:780;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"Foo ";}i:2;i:782;}i:17;a:3:{i:0;s:9:"emaillink";i:1;a:2:{i:0;s:11:"foo@bar.com";i:1;N;}i:2;i:786;}i:18;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:799;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:801;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:802;}i:21;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:263:"
$swift =& new Swift(new Swift_Connection_SMTP("host.tld"));

$message =& new Swift_Message("My subject", "My body");

$sent = $swift->send($message, new Swift_Address("recipient@address.tld", "Recipient"), "sender@address.tld");
echo "Sent to $sent recipients";
";i:1;s:3:"php";}i:2;i:809;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1084;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:65:"We can also use the Swift_Address class for the sender parameter:";}i:2;i:1086;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1151;}i:25;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:308:"
$swift =& new Swift(new Swift_Connection_SMTP("host.tld"));

$message =& new Swift_Message("My subject", "My body");


$sent = $swift->send(
    $message, new Swift_Address("recipient@address.tld", "Recipient Name"),
    new Swift_Address("sender@address.tld", "My Name"));
echo "Sent to $sent recipients";
";i:1;s:3:"php";}i:2;i:1158;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1478;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"Simple right? :)
";}i:2;i:1480;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1496;}i:29;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1496;}i:30;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1496;}}