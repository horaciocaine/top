a:159:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:37:"Swift Automatic File Embedding Plugin";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:52;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:53;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:462:"Although Swift provides tools to embed files (such as images) into your emails, the interface through which you do this may not be convenient if you have been sent an email from a source beyond your control, already containing references to images over the web.  The Swift_Plugin_FileEmbedder class scans over an email before it is sent and embeds images (and other files) according to a set of rules.  The most basic use of the class simply involves loading it.";}i:2;i:54;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:516;}i:10;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:575:"
require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";
require_once "lib/Swift/Plugin/FileEmbedder.php";

$swift =& new Swift(new Swift_Connection_SMTP("localhost"));

//Attach the plugin
$swift->attachPlugin(new Swift_Plugin_FileEmbedder(), "file_embedder");

$message =& new Swift_Message("Your subject");
$message->attach(new Swift_Message_Part('This is going to be embedded<br />
<img src="http://www.server.tld/images/some-image.gif" /> rather than linked to.', 'text/html'));

$swift->send($message, 'someone@somewhere.com', 'sender@domain.tld');
";i:1;s:3:"php";}i:2;i:523;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1110;}i:12;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1112;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"IMPORTANT:";}i:2;i:1114;}i:14;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1124;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:207:" You cannot embed files into messages successfully unless you set the body as an instance of Swift_Message_Part.  Make sure your body has been added with attach(new Swift_Message_Part()) rather than $message";}i:2;i:1126;}i:16;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"->";}i:2;i:1333;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"setBody().";}i:2;i:1335;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1345;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1345;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:191:"The plugin is smart enough to know not to download and embed the same image more than once so you do not need to worry about using the same image multiple times to create layouts for example.";}i:2;i:1347;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1538;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1538;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:68:"By default the plugin will use the following rules and nothing else:";}i:2;i:1540;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:1608;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1609;}i:26;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:1609;}i:27;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1609;}i:28;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1609;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:" Find <img> tags with ";}i:2;i:1613;}i:30;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1635;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"src";}i:2;i:1637;}i:32;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1640;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:71:" attributes and extensions ending in one of gif, jpg, jpeg, pjpeg, png.";}i:2;i:1642;}i:34;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1713;}i:35;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1713;}i:36;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1713;}i:37;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1713;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:" Find <script> tags with ";}i:2;i:1717;}i:39;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1742;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"src";}i:2;i:1744;}i:41;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1747;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:" attributes and extensions ending in js.";}i:2;i:1749;}i:43;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1789;}i:44;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1789;}i:45;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1789;}i:46;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1789;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:" Find <link> tags with ";}i:2;i:1793;}i:48;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1816;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"href";}i:2;i:1818;}i:50;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1822;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:" attributes and extensions ending in css.";}i:2;i:1824;}i:52;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1865;}i:53;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1865;}i:54;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:1865;}i:55;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1865;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:1866;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:"It will also try to use protocols http, https and ftp.";}i:2;i:1867;}i:58;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1921;}i:59;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1921;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"There";}i:2;i:1923;}i:61;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:1928;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"s a fairly good chance you";}i:2;i:1929;}i:63;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:1955;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"ll want to change this.";}i:2;i:1956;}i:65;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1979;}i:66;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1981;}i:67;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:1;i:1;i:1980;i:2;i:1;i:3;s:37:"Swift Automatic File Embedding Plugin";}i:2;i:1981;}i:68;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"Changing the rules";i:1;i:2;i:2;i:1981;}i:2;i:1981;}i:69;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1981;}i:70;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2011;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:2012;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:104:"If you start the plugin before you attach it to $swift you can make some changes in the rules first.  We";}i:2;i:2013;}i:73;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:2117;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:94:"ll look at how you add and remove rules for which tags to scan for and which protocols to use.";}i:2;i:2118;}i:75;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2212;}i:76;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2215;}i:77;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:1981;i:1;i:2214;i:2;i:2;i:3;s:18:"Changing the rules";}i:2;i:2215;}i:78;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:30:"Adding or ammending a tag rule";i:1;i:3;i:2;i:2215;}i:2;i:2215;}i:79;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:2215;}i:80;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2255;}i:81;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:2256;}i:82;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:74:"The setTagDefinition() method allows you to specify how tags are searched.";}i:2;i:2257;}i:83;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2331;}i:84;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:396:"
$plugin =& new Swift_Plugin_FileEmbedder();
//Add a new rule (parameter order: tag, attributes, extensions)
// This would find for example
// <body background="foo.gif">
$plugin->setTagDefinition("body", "background", array("gif", "png"));
//Overwrite an existing rule (same as above)
// This rule will only find <img> tags containing .jpg files.
$plugin->setTagDefinition("img", "src", "jpg");
";i:1;s:3:"php";}i:2;i:2338;}i:85;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2746;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:120:"You can specify multiple values for the attributes and/or the extensions by simply passing an array for those parameters";}i:2;i:2748;}i:87;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:2868;}i:88;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2874;}i:89;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:92:"
$plugin->setTagDefinition("tagname", array("src", "href"), array("ext1", "ext2", "ext3"));
";i:1;s:3:"php";}i:2;i:2874;}i:90;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2978;}i:91;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"I";}i:2;i:2980;}i:92;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:2981;}i:93;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:77:"ve yet to see a tag which has multiple attributes for remote files however ;)";}i:2;i:2982;}i:94;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3059;}i:95;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3061;}i:96;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:2215;i:1;i:3060;i:2;i:3;i:3;s:30:"Adding or ammending a tag rule";}i:2;i:3061;}i:97;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"Checking a tag rule";i:1;i:3;i:2;i:3061;}i:2;i:3061;}i:98;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:3061;}i:99;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3090;}i:100;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:3091;}i:101;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:72:"Checking a tag rule is just a case of calling getTagDefintion($tagName).";}i:2;i:3092;}i:102;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3164;}i:103;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:219:"
print_r($plugin->getTagDefinition("img"));

/*
Array (
  'attributes' => Array (
    0 => 'src'
  ),
  'extensions' => Array (
    0 => 'gif',
    1 => 'jpg',
    2 => 'jpeg',
    3 => 'pjpeg',
    4 => 'png'
  )
)
*/
";i:1;s:3:"php";}i:2;i:3171;}i:104;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3404;}i:105;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:3061;i:1;i:3403;i:2;i:3;i:3;s:19:"Checking a tag rule";}i:2;i:3404;}i:106;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"Deleting a tag rule";i:1;i:3;i:2;i:3404;}i:2;i:3404;}i:107;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:3404;}i:108;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3433;}i:109;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:3434;}i:110;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:"The removeTagDefintion() method removes a rule completely.";}i:2;i:3435;}i:111;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3493;}i:112;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:69:"
$plugin->removeTagDefinition("script"); //Disable Embedded JS files
";i:1;s:3:"php";}i:2;i:3500;}i:113;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3583;}i:114;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:3404;i:1;i:3582;i:2;i:3;i:3;s:19:"Deleting a tag rule";}i:2;i:3583;}i:115;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:47:"Adding a protocol to use when downloading files";i:1;i:3;i:2;i:3583;}i:2;i:3583;}i:116;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:3583;}i:117;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3640;}i:118;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:3641;}i:119;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:98:"By default, the plugin will only download a file and embed it if the file will be downloaded over ";}i:2;i:3642;}i:120;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"HTTP";}i:2;i:3740;}i:121;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:", HTTPS or ";}i:2;i:3744;}i:122;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"FTP";}i:2;i:3755;}i:123;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:".  If you";}i:2;i:3758;}i:124;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:3767;}i:125;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:68:"d like to add a new protocol to this list simply call addProtocol().";}i:2;i:3768;}i:126;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3836;}i:127;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:83:"
$plugin->addProtocol("file"); // as in 'file:///foo/bar.txt' without the :// part
";i:1;s:3:"php";}i:2;i:3843;}i:128;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3940;}i:129;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:3583;i:1;i:3939;i:2;i:3;i:3;s:47:"Adding a protocol to use when downloading files";}i:2;i:3940;}i:130;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"Removing a protocol";i:1;i:3;i:2;i:3940;}i:2;i:3940;}i:131;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:3940;}i:132;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3969;}i:133;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:3970;}i:134;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"Removing a protocol is done through removeProtocol().";}i:2;i:3971;}i:135;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4024;}i:136;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:57:"
$plugin->removeProtocol('ftp'); //Disable FTP downloads
";i:1;s:3:"php";}i:2;i:4031;}i:137;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4102;}i:138;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:3940;i:1;i:4101;i:2;i:3;i:3;s:19:"Removing a protocol";}i:2;i:4102;}i:139;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:22:"Local and remote files";i:1;i:2;i:2;i:4102;}i:2;i:4102;}i:140;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:4102;}i:141;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4136;}i:142;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:4137;}i:143;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:101:"The plugin will actually detect paths inside the permitted tags within your filesystem.  For example:";}i:2;i:4138;}i:144;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4239;}i:145;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:34:"
<img src="/path/to/image.gif" />
";i:1;N;}i:2;i:4246;}i:146;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4288;}i:147;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:97:"For this to work you need to specify an absolute path to the file, starting with a forward slash.";}i:2;i:4290;}i:148;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4387;}i:149;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4387;}i:150;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:"You can disable remote and/or local file embedding by using $plugin";}i:2;i:4389;}i:151;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"->";}i:2;i:4456;}i:152;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"setEmbedRemoteFiles(false) and/or $plugin";}i:2;i:4458;}i:153;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"->";}i:2;i:4499;}i:154;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"setEmbedLocalFiles(false).";}i:2;i:4501;}i:155;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4527;}i:156;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4528;}i:157;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:4102;i:1;i:0;i:2;i:2;i:3;s:22:"Local and remote files";}i:2;i:4528;}i:158;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4528;}}