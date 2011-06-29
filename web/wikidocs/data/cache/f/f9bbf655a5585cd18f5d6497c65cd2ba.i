a:66:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:22:"Swift's Logging System";i:1;i:3;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:33;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:130:"
This page applies to version 3.3 and higher only.  The interface for this feature was considerably different in earlier versions.";}i:2;i:34;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:164;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:164;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:257:"Swift contains a complete logging system with differing levels of reporting.  By default, this logging system is disabled for the sake of speed and memory, but if you're running into problems you may consider enabling it so you can find out what's going on.";}i:2;i:166;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:423;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:423;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:"The logging system provides the following levels of log information:
";}i:2;i:425;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:494;}i:15;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:357:"0 = Off (Swift_Log::LOG_NOTHING or SWIFT_LOG_NOTHING in PHP4)
1 = Errors only (Swift_Log::LOG_ERRORS or SWIFT_LOG_ERRORS in PHP4)
2 = Failed deliveries (Swift_Log::LOG_FAILURES or SWIFT_LOG_FAILURES in PHP4)
3 = Network commands (Swift_Log::LOG_NETWORK or SWIFT_LOG_NETWORK in PHP4)
4 = Everything (Swift_Log::LOG_EVERYTHING or SWIFT_LOG_EVERYTHING in PHP4)";}i:2;i:494;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:494;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:90:"
Each succesive error level includes everything below it, so if you set an error level of ";}i:2;i:863;}i:18;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:953;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"3";}i:2;i:954;}i:20;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:955;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:60:" you'll also get log entries as levels 1 and 2 being logged.";}i:2;i:956;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1016;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1016;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"To set the log level:";}i:2;i:1018;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1039;}i:26;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:75:"
$log =& Swift_LogContainer::getLog();
$log->setLogLevel($whatever_level);
";i:1;s:3:"php";}i:2;i:1046;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1133;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:113:"The log level changes with immediate effect.  Remember to change it early on if you want lots of log information.";}i:2;i:1135;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1248;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1248;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"To get data back out of the log:";}i:2;i:1250;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1282;}i:33;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:62:"
$log =& Swift_LogContainer::getLog();
echo $log->dump(true);
";i:1;s:3:"php";}i:2;i:1289;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1363;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:266:"This can be particularly useful if you keep getting failed deliveries and you can't think what the cause is because with a high enough error level you'll see what Swift is doing and what the connection is doing.  Usually level 3 will be as high as you'll need to go.";}i:2;i:1365;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1631;}i:37;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1631;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:174:"By default, the log truncates itself to a maximum of 50 entries so that memory is not completely wasted for large batches.  If you need even more log data than this, use $log";}i:2;i:1633;}i:39;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"->";}i:2;i:1807;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"setMaxSize():";}i:2;i:1809;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1822;}i:42;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:61:"
$log = Swift_LogContainer::getLog();
$log->setMaxSize(200);
";i:1;s:3:"php";}i:2;i:1829;}i:43;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1902;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:76:"A maximum log size of 0 (zero) means that it will never be truncated at all.";}i:2;i:1904;}i:45;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1980;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1980;}i:47;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1982;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"NOTE";}i:2;i:1984;}i:49;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1988;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:111:": In Versions 3.0, 3.1 and 3.2 logging did exist, but it was less useful, residing only as a property in $swift";}i:2;i:1990;}i:51;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"->";}i:2;i:2101;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"log with only ";}i:2;i:2103;}i:53;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2117;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"on";}i:2;i:2118;}i:55;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2120;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:" or ";}i:2;i:2121;}i:57;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2125;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"off";}i:2;i:2126;}i:59;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2129;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:" states.  The ";}i:2;i:2130;}i:61;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"API";}i:2;i:2144;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:" documentation for these earlier versions provides rudimentary documentation for usage.
";}i:2;i:2147;}i:63;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2234;}i:64;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2234;}i:65;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2234;}}