a:40:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:26:"Using the AntiFlood plugin";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:41;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:42;}i:8;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:43;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"Synopsis:";}i:2;i:45;}i:10;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:54;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:56;}i:12;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:57;}i:13;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:59;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:"new Swift_Plugin_AntiFlood([int threshold [, int pause]])";}i:2;i:61;}i:15;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:118;}i:16;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:120;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:122;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:122;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:64:"The AntiFlood plugin is designed to help lessen the load on the ";}i:2;i:124;}i:20;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"HTTP";}i:2;i:188;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:" server and the ";}i:2;i:192;}i:22;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:208;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:" server.  It can also be used to send out very large batches of emails when the ";}i:2;i:212;}i:24;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:292;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:79:" server has restrictions in place to limit the number of emails sent in one go.";}i:2;i:296;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:375;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:375;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:337:"The plugin is given a threshold number of emails to allow through per-connection.  It then keeps a persistent connection open for that number of emails and restarts the connection each time that threshold is reached.  This plugin has been used with great success by a large number of developers sending out many thousands of emails over ";}i:2;i:377;}i:29;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:714;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:".  It can be used with any of the available connectons - not just ";}i:2;i:718;}i:31;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:784;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:788;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:789;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:789;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:367:"Not only does this plugin keep closing and restarting the connection when the threshold is reached, it also is capable of waiting for a given number of seconds before the connection is re-opened.  Even just a few seconds will give the servers a considerable chance to flush some memory and will likely give you a faster overall result compared with not using a pause.";}i:2;i:791;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1158;}i:37;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:427:"
require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";
require_once "lib/Swift/Plugin/AntiFlood.php";

$swift =& new Swift(new Swift_Connection_SMTP("remote-server.tld"));

//Reconnect after 100 emails
$swift->attachPlugin(new Swift_Plugin_AntiFlood(100), "anti-flood");

//Reconnect after 200 emails, but wait for 10 seconds first
$swift->attachPlugin(new Swift_Plugin_AntiFlood(200, 10), "anti-flood");
";i:1;s:3:"php";}i:2;i:1165;}i:38;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1604;}i:39;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1604;}}