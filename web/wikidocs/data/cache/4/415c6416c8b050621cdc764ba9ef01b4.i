a:34:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:38:"Throttler Plugin to restrict the speed";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:53;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:54;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"If you want to run a batch send that";}i:2;i:55;}i:9;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:91;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"s going to take a long time and don";}i:2;i:92;}i:11;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:127;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"t want to hog the server";}i:2;i:128;}i:13;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:152;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:266:"s resources and/or bandwidth in the process perhaps this plugin is the solution.  Unlike the AntiFlood plugin, which offers a similar solution, the throttler works on the basis of restricting speed, not on the basis of minimizing the number of emails per-connection.";}i:2;i:153;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:419;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:419;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:86:"You can set the speed in terms of bytes-per-minute or in terms of messages-per-minute.";}i:2;i:421;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:507;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:507;}i:20;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:509;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"NOTE:";}i:2;i:511;}i:22;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:516;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:125:" Bytes-per-minute applies only to the outgoing traffic, but the incoming traffic negligible anyway (basic one-line responses)";}i:2;i:518;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:643;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:643;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:77:"Using the plugin is simple.  Just create it, set the rate and then load it :)";}i:2;i:645;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:722;}i:28;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:526:"
<?php

require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";
require_once "lib/Swift/Plugin/Throttler.php";

$swift =& new Swift(new Swift_Connection_SMTP("smtp.host.tld"));

$throttler =& new Swift_Plugin_Throttler();
$throttler->setBytesPerMinute(20000000); //Roughly 20MB

$swift->attachPlugin($throttler, "throttler");

//or maybe you want to set the number of messages per minute?

$throttler->setEmailsPerMinute(30); //Max of 1 email every 2 seconds
$swift->attachPlugin($throttler, "throttler");
";i:1;s:3:"php";}i:2;i:729;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1267;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:97:"This will work no matter what approach you take to send your emails, be it batchSend() or send().";}i:2;i:1269;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1366;}i:32;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1367;}i:33;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1367;}}