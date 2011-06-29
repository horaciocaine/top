a:44:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:42:"Swift Bandwidth Monitoring/Tracking Plugin";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:57;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:58;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"Depending upon what you";}i:2;i:59;}i:9;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:82;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"re doing, or shoud I say, the scale of what you";}i:2;i:83;}i:11;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:130;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:157:"re sending you may wish to keep track of how much bandwidth Swift is using.  This plugin measures the incoming and outgoing bandwidth through the connection.";}i:2;i:131;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:288;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:288;}i:15;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:290;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"NOTE:";}i:2;i:292;}i:17;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:297;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:" The figures are from Swift";}i:2;i:299;}i:19;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:326;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"s point of view, not the server.  ";}i:2;i:327;}i:21;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:361;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"Bytes in";}i:2;i:362;}i:23;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:370;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:" refers to bytes from the ";}i:2;i:371;}i:25;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:397;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:" server back into swift; ";}i:2;i:401;}i:27;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:426;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"bytes out";}i:2;i:427;}i:29;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:436;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:" refers to bytes sent from Swift to the ";}i:2;i:437;}i:31;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:477;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:" server.";}i:2;i:481;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:489;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:489;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:70:"All you need to do is load the plugin and grab the figures at runtime.";}i:2;i:491;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:561;}i:37;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:663:"
<?php

require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";
require_once "lib/Swift/Plugin/BandwidthMonitor.php";

//Instantiate Swift
$swift =& new Swift(new Swift_Connection_SMTP("smtp.host.tld"));

//Create the instance of the plugin
$bandwidth =& new Swift_Plugin_BandwidthMonitor();

//Load it
$swift->attachPlugin($bandwidth, "bwmon");

$message = new Swift_Message( ... whatever ... );

foreach ($some_recipients as $address)
{
    $swift->send($message, $address, $your_address);
    echo "Bytes sent out so far: " . $bandwidth->getBytesOut() . "<br />";
    echo "Bytes received so far: " . $bandwidth->getBytesIn() . "<br />";
}
";i:1;s:3:"php";}i:2;i:568;}i:38;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1243;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:63:"You can reset the counters at any point by calling for example:";}i:2;i:1245;}i:40;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1308;}i:41;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:56:"
$bandwidth->setBytesIn(0);
$bandwidth->setBytesOut(0);
";i:1;s:3:"php";}i:2;i:1315;}i:42;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1383;}i:43;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1383;}}