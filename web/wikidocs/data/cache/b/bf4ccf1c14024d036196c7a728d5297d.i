a:26:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:14:"The Disk Cache";i:1;i:2;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:27;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:"
The Disk cache is enabled by default, provided ";}i:2;i:28;}i:8;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:76;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"sys_get_temp_dir()";}i:2;i:78;}i:10;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:96;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:156:" exists.  Using disk caching provides speed improvements when sending large attachments and it provides a consistent level of memory use (roughly 1.68 MiB).";}i:2;i:98;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:254;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:254;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:176:"To explicitly use disk caching place these lines anywhere before you send any messages.  There is no need to use this code in the same script multiple times; only call it once.";}i:2;i:256;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:432;}i:16;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:84:"
<?php

Swift_Preferences::getInstance()->setCacheType('disk')->setTempDir('/tmp');
";i:1;s:3:"php";}i:2;i:439;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:535;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"Where ";}i:2;i:537;}i:19;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:543;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"/tmp";}i:2;i:544;}i:21;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:548;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:68:" is replaced with whatever writable directory exists on your server.";}i:2;i:549;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:617;}i:24;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:618;}i:25;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:618;}}