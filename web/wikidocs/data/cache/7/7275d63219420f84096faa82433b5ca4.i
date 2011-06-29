a:184:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"Dealing with Attachments";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:39;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:40;}i:8;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:41;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"Synopsis:";}i:2;i:43;}i:10;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:52;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:54;}i:12;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:55;}i:13;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:57;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:129:"new Swift_Message_Attachment([mixed data [, string filename [, string content-type [, string encoding [, string disposition]]]]])";}i:2;i:59;}i:15;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:188;}i:16;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:190;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:192;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:192;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"An attachment yet again, another ";}i:2;i:194;}i:20;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"MIME";}i:2;i:227;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:" document.  It";}i:2;i:231;}i:22;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:245;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:59:"s special because it contains any format of data such as a ";}i:2;i:246;}i:24;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"PDF";}i:2;i:305;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:", a Zip file or an executable.  In order for ";}i:2;i:308;}i:26;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:353;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:98:" to proccess such data it gets encoded into a format which looks like plain-text (such as Base64).";}i:2;i:357;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:455;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:455;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:246:"When you create an attachment, you have two means of providing the contents of the file; You can read them yourself using something like file_get_contents(), or you can pass a file object to the attachment to allow it to read the file itself.  We";}i:2;i:457;}i:31;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:703;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:92:"ll look at both approaches here and assess where either one is more suitable than the other.";}i:2;i:704;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:796;}i:34;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:798;}i:35;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:1;i:1;i:797;i:2;i:1;i:3;s:24:"Dealing with Attachments";}i:2;i:798;}i:36;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:55:"Attaching the file contents as a string read externally";i:1;i:2;i:2;i:798;}i:2;i:798;}i:37;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:798;}i:38;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:190:"
$message =& new Swift_Message("My subject");

$file_data = file_get_contents("foo.pdf");
$attachment =& new Swift_Message_Attachment($file_data, "foo.pdf");

$message->attach($attachment);
";i:1;s:3:"php";}i:2;i:871;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1073;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:154:"When we attach the file as a string, the Attachment class does not know its filename so we need to re-confirm it by passing it as a parameter.  If we didn";}i:2;i:1075;}i:41;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:1229;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:"t do this, the Attachment class would give it a name like ";}i:2;i:1230;}i:43;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1288;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"file.1";}i:2;i:1289;}i:45;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1295;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:" which makes no sense to the recipient.";}i:2;i:1296;}i:47;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1335;}i:48;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1335;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:106:"I hesitate to go into the inner workings of the Attachment class here, but for the sake of clarification I";}i:2;i:1337;}i:50;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:1443;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:191:"ll touch on how the encoding works.  When you provide a string in this way, the attachment class takes the entire string and base64 encodes that data at the time the message is rendered.  You";}i:2;i:1444;}i:52;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:1635;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"ll see why I";}i:2;i:1636;}i:54;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:1648;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"ve mentioned that after we look at the next approach to providing an attachment.";}i:2;i:1649;}i:56;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1729;}i:57;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1731;}i:58;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:798;i:1;i:1730;i:2;i:2;i:3;s:55:"Attaching the file contents as a string read externally";}i:2;i:1731;}i:59;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:54:"Attaching the file contents using the Swift_File class";i:1;i:2;i:2;i:1731;}i:2;i:1731;}i:60;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1731;}i:61;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:167:"
$message =& new Swift_Message("My subject");

$file =& new Swift_File("foo.pdf");
$attachment =& new Swift_Message_Attachment($file);

$message->attach($attachment);
";i:1;s:3:"php";}i:2;i:1803;}i:62;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1982;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:101:"Not much different then?  Well no, not really.  But it does have its advantages in certain scenarios.";}i:2;i:1984;}i:64;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2085;}i:65;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2085;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:194:"Swift_File does not read the entire file contents in one go, it reads the file in small chunks of bytes and therefore allows encoding in smaller portions.  This has two advantages when encoding:";}i:2;i:2087;}i:67;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:2281;}i:68;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2282;}i:69;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:2282;}i:70;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2282;}i:71;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2282;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:"  It speeds up the encoding process (I";}i:2;i:2286;}i:73;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:2324;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"ve still not understood exactly ";}i:2;i:2325;}i:75;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2357;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"why";}i:2;i:2358;}i:77;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2361;}i:78;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:", but my testing shows it does)";}i:2;i:2362;}i:79;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2393;}i:80;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2393;}i:81;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2393;}i:82;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2393;}i:83;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"  It saves a ";}i:2;i:2397;}i:84;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2410;}i:85;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"considerable";}i:2;i:2412;}i:86;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2424;}i:87;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:" amount memory";}i:2;i:2426;}i:88;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2440;}i:89;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2440;}i:90;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:2440;}i:91;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2440;}i:92;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:2441;}i:93;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"PHP";}i:2;i:2442;}i:94;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:100:" imposes a 8 megabyte memory limit on scripts by default (I believe this has been raised to 16MB in ";}i:2;i:2445;}i:95;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"PHP";}i:2;i:2545;}i:96;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:104:" 5.2.0).  This can very easily be exhausted when you use the first method of adding an attachment if you";}i:2;i:2548;}i:97;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:2652;}i:98;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:316:"re attaching a file with a size of say, 2MB.  This is because you have a copy of the 2MB in memory, you then have a base64 encoded copy in memory which is 33% larger than the original (2.66MB) plus the overhead of the encoding process and a copy which is cached to reduce CPU cycles.  This soon uses a lot of memory.";}i:2;i:2653;}i:99;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2969;}i:100;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2971;}i:101;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:1731;i:1;i:2970;i:2;i:2;i:3;s:54:"Attaching the file contents using the Swift_File class";}i:2;i:2971;}i:102;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:27:"So which method do you use?";i:1;i:2;i:2;i:2971;}i:2;i:2971;}i:103;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2971;}i:104;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3010;}i:105;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:3011;}i:106;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:188:"By using Swift_File you save memory by not having the file contents in memory, and by not having such a large overhead in encoding.  This is the preferred method for attaching large files.";}i:2;i:3012;}i:107;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3200;}i:108;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3200;}i:109;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:144:"Additionally, using Swift_File allows you to leave out the filename parameter in Swift_Message_Attachment since it provides the filename itself.";}i:2;i:3202;}i:110;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3346;}i:111;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3346;}i:112;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:3348;}i:113;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:3350;}i:114;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:"So why provide the string method at all?";}i:2;i:3352;}i:115;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:3392;}i:116;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:3394;}i:117;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3396;}i:118;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3396;}i:119;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"Simple.  Imagine you create an image with GD or a ";}i:2;i:3398;}i:120;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"PDF";}i:2;i:3448;}i:121;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:" with the R&";}i:2;i:3451;}i:122;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:2:"OS";}i:2;i:3463;}i:123;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:3465;}i:124;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"PDF";}i:2;i:3466;}i:125;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:203:" library.  Do you want to have to write the file to the server only to read it and delete it again?  The string method of attaching files is designed to allow dynmically generated content to be attached.";}i:2;i:3469;}i:126;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3672;}i:127;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3672;}i:128;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:3674;}i:129;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"NOTE:";}i:2;i:3676;}i:130;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:3681;}i:131;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:60:" The content-type defaults to application/octet-stream.  You";}i:2;i:3683;}i:132;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:3743;}i:133;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:99:"ll probably want to specify the correct content-type yourself.  In the above example this would be ";}i:2;i:3744;}i:134;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:3843;}i:135;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"application/pdf";}i:2;i:3844;}i:136;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:3859;}i:137;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:3860;}i:138;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3861;}i:139;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3861;}i:140;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"[TODO: List ";}i:2;i:3863;}i:141;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"MIME";}i:2;i:3875;}i:142;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:" types in the documentation]";}i:2;i:3879;}i:143;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3907;}i:144;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3907;}i:145;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:3909;}i:146;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"TIP:";}i:2;i:3911;}i:147;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:3915;}i:148;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:" It";}i:2;i:3917;}i:149;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:3920;}i:150;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:129:"s a little known secret that passing an instance of Swift_File to provide the data for the attachment is actually handled by the ";}i:2;i:3921;}i:151;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"MIME";}i:2;i:4050;}i:152;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:68:" layer itself.  Swift_Message, Swift_Message_Part and all the other ";}i:2;i:4054;}i:153;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"MIME";}i:2;i:4122;}i:154;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:136:" features extend this layer and thus, you can pass an instance of Swift_File to Swift_Message to create the message body from a text or ";}i:2;i:4126;}i:155;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"HTML";}i:2;i:4262;}i:156;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:93:" file.  Equally you can pass a file object to Swift_Message_Part to provide the message body.";}i:2;i:4266;}i:157;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4359;}i:158;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4361;}i:159;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:2971;i:1;i:4360;i:2;i:2;i:3;s:27:"So which method do you use?";}i:2;i:4361;}i:160;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:35:"What's the content disposition for?";i:1;i:2;i:2;i:4361;}i:2;i:4361;}i:161;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:4361;}i:162;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4408;}i:163;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:4409;}i:164;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"Attachments are by default nested into an email with a tag to indicate they are ";}i:2;i:4410;}i:165;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:4490;}i:166;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"attachment";}i:2;i:4491;}i:167;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4501;}i:168;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:86:" data.  This tag is known as its disposition.  You can alternatively attach a file as ";}i:2;i:4502;}i:169;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:4588;}i:170;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"inline";}i:2;i:4589;}i:171;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4595;}i:172;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:" such as the case where you add an embedded image.  It";}i:2;i:4596;}i:173;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:4650;}i:174;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"s unlikely you";}i:2;i:4651;}i:175;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:4665;}i:176;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:127:"ll ever need to specify the disposition manually, but the feature exists anyway.  Note that you can use setDisposition() if you";}i:2;i:4666;}i:177;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:4793;}i:178;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"d rather not use the constructor.";}i:2;i:4794;}i:179;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:4827;}i:180;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4827;}i:181;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4827;}i:182;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:4361;i:1;i:0;i:2;i:2;i:3;s:35:"What's the content disposition for?";}i:2;i:4827;}i:183;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4827;}}