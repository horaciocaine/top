a:33:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:39:"Verbose Sending Plugin (Debug-use only)";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:54;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:170:"
The verbose sending plugin dumps out green and red bars during the sending of batches in order to allow you to quickly identify recipients who are not going through the ";}i:2;i:55;}i:8;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:225;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:208:" connection.  It's unlikely you'll need to use this plugin for anything other than debugging.  Usage is simple, all you have to do is load it into Swift along with the View class it uses (or one of your own).";}i:2;i:229;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:437;}i:11;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:402:"
<?php

/** REQUIRES Swift 3.1 OR LATER **/

require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";
require_once "lib/Swift/Plugin/VerboseSending.php";

$swift =& new Swift(new Swift_Connection_SMTP("smtp.host.tld"));

$plugin_view =& new Swift_Plugin_VerboseSending_DefaultView();
$swift->attachPlugin(new Swift_Plugin_VerboseSending($view), "verbose");

//continue as normal

?>
";i:1;s:3:"php";}i:2;i:444;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:858;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:"The DefaultView class displays a page which looks like so:";}i:2;i:860;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:918;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:918;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:920;}i:17;a:3:{i:0;s:13:"externalmedia";i:1;a:7:{i:0;s:56:"http://www.swiftmailer.org/wikiimages/verbose_plugin.jpg";i:1;s:31:"An example output of the plugin";i:2;N;i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:921;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1013;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1013;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:59:"
You can create your own view very simply by extending the ";}i:2;i:1015;}i:21;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1074;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:"Swift_Plugin_VerboseSending_AbstractView";}i:2;i:1076;}i:23;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1116;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:" class and implementing the ";}i:2;i:1118;}i:25;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1146;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"paintResult()";}i:2;i:1148;}i:27;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1161;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:" method.";}i:2;i:1163;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1171;}i:30;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:227:"
class MyView extends Swift_Plugin_VerboseSending_AbstractView {
    function paintResult($address, $result) {
        if ($result == true) echo $address . " passed<br />";
        else echo $address . " failed<br />";
    }
}
";i:1;s:3:"php";}i:2;i:1178;}i:31;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1417;}i:32;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1417;}}