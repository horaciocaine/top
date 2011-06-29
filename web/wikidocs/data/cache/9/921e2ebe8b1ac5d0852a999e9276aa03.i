a:24:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:30:"Dealing with failed recipients";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:45;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:46;}i:8;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:47;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:84:" does occassionally reject recipient addresses due to malformity, domain conflicts, ";}i:2;i:51;}i:10;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"DNS";}i:2;i:135;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:191:" issues and other problems.  If you want to track who got rejected you should enable Swift's logging facility so that these failures can be collected.  The failed addresses will be stored in ";}i:2;i:138;}i:12;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:329;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"$swift";}i:2;i:331;}i:14;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"->";}i:2;i:337;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"log";}i:2;i:339;}i:16;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"->";}i:2;i:342;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"getFailedRecipients()";}i:2;i:344;}i:18;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:365;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:" as an array.";}i:2;i:367;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:380;}i:21;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:471:"
$swift =& new Swift(new Swift_Connection_SMTP("host.tld"));
$swift->log->enable();

$message =& new Swift_Message("My subject", "My body");

$recipients =& new Swift_RecipientList();
$recipients->addTo("foo@bar");
$recipients->addTo("zip@button.tld", "Zip");

$num_sent = $swift->send($message, $recipients, "me@my-domain.com");

echo "Message sent to $num_sent of 2 recipients";

echo "Failed recipients:<br />";
echo implode(" ,", $swift->log->getFailedRecipients());
";i:1;s:3:"php";}i:2;i:387;}i:22;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:871;}i:23;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:871;}}