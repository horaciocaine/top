a:138:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:37:"Swift Automatic File Embedding Plugin";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:52;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:463:"
Although Swift provides tools to embed files (such as images) into your emails, the interface through which you do this may not be convenient if you have been sent an email from a source beyond your control, already containing references to images over the web.  The Swift_Plugin_FileEmbedder class scans over an email before it is sent and embeds images (and other files) according to a set of rules.  The most basic use of the class simply involves loading it.";}i:2;i:53;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:516;}i:9;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:575:"
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
";i:1;s:3:"php";}i:2;i:523;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1110;}i:11;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1112;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"IMPORTANT:";}i:2;i:1114;}i:13;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1124;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:207:" You cannot embed files into messages successfully unless you set the body as an instance of Swift_Message_Part.  Make sure your body has been added with attach(new Swift_Message_Part()) rather than $message";}i:2;i:1126;}i:15;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"->";}i:2;i:1333;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"setBody().";}i:2;i:1335;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1345;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1345;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:191:"The plugin is smart enough to know not to download and embed the same image more than once so you do not need to worry about using the same image multiple times to create layouts for example.";}i:2;i:1347;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1538;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1538;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:"By default the plugin will use the following rules and nothing else:
";}i:2;i:1540;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1609;}i:24;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:1609;}i:25;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1609;}i:26;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1609;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:" Find <img> tags with ";}i:2;i:1613;}i:28;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1635;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"src";}i:2;i:1637;}i:30;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1640;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:71:" attributes and extensions ending in one of gif, jpg, jpeg, pjpeg, png.";}i:2;i:1642;}i:32;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1713;}i:33;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1713;}i:34;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1713;}i:35;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1713;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:" Find <script> tags with ";}i:2;i:1717;}i:37;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1742;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"src";}i:2;i:1744;}i:39;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1747;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:" attributes and extensions ending in js.";}i:2;i:1749;}i:41;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1789;}i:42;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1789;}i:43;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1789;}i:44;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1789;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:" Find <link> tags with ";}i:2;i:1793;}i:46;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1816;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"href";}i:2;i:1818;}i:48;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1822;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:" attributes and extensions ending in css.";}i:2;i:1824;}i:50;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1865;}i:51;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1865;}i:52;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:1865;}i:53;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1865;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:55:"
It will also try to use protocols http, https and ftp.";}i:2;i:1866;}i:55;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1921;}i:56;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1921;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:"There's a fairly good chance you'll want to change this.";}i:2;i:1923;}i:58;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1979;}i:59;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1981;}i:60;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:1;i:1;i:1980;i:2;i:1;i:3;s:37:"Swift Automatic File Embedding Plugin";}i:2;i:1981;}i:61;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"Changing the rules";i:1;i:2;i:2;i:1981;}i:2;i:1981;}i:62;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1981;}i:63;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2011;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:200:"
If you start the plugin before you attach it to $swift you can make some changes in the rules first.  We'll look at how you add and remove rules for which tags to scan for and which protocols to use.";}i:2;i:2012;}i:65;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2212;}i:66;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2215;}i:67;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:1981;i:1;i:2214;i:2;i:2;i:3;s:18:"Changing the rules";}i:2;i:2215;}i:68;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:30:"Adding or ammending a tag rule";i:1;i:3;i:2;i:2215;}i:2;i:2215;}i:69;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:2215;}i:70;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2255;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:75:"
The setTagDefinition() method allows you to specify how tags are searched.";}i:2;i:2256;}i:72;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2331;}i:73;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:396:"
$plugin =& new Swift_Plugin_FileEmbedder();
//Add a new rule (parameter order: tag, attributes, extensions)
// This would find for example
// <body background="foo.gif">
$plugin->setTagDefinition("body", "background", array("gif", "png"));
//Overwrite an existing rule (same as above)
// This rule will only find <img> tags containing .jpg files.
$plugin->setTagDefinition("img", "src", "jpg");
";i:1;s:3:"php";}i:2;i:2338;}i:74;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2746;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:121:"You can specify multiple values for the attributes and/or the extensions by simply passing an array for those parameters
";}i:2;i:2748;}i:76;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2874;}i:77;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:92:"
$plugin->setTagDefinition("tagname", array("src", "href"), array("ext1", "ext2", "ext3"));
";i:1;s:3:"php";}i:2;i:2874;}i:78;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2978;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:79:"I've yet to see a tag which has multiple attributes for remote files however ;)";}i:2;i:2980;}i:80;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3059;}i:81;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3061;}i:82;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:2215;i:1;i:3060;i:2;i:3;i:3;s:30:"Adding or ammending a tag rule";}i:2;i:3061;}i:83;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"Checking a tag rule";i:1;i:3;i:2;i:3061;}i:2;i:3061;}i:84;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:3061;}i:85;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3090;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:73:"
Checking a tag rule is just a case of calling getTagDefintion($tagName).";}i:2;i:3091;}i:87;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3164;}i:88;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:219:"
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
";i:1;s:3:"php";}i:2;i:3171;}i:89;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3404;}i:90;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:3061;i:1;i:3403;i:2;i:3;i:3;s:19:"Checking a tag rule";}i:2;i:3404;}i:91;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"Deleting a tag rule";i:1;i:3;i:2;i:3404;}i:2;i:3404;}i:92;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:3404;}i:93;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3433;}i:94;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:59:"
The removeTagDefintion() method removes a rule completely.";}i:2;i:3434;}i:95;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3493;}i:96;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:69:"
$plugin->removeTagDefinition("script"); //Disable Embedded JS files
";i:1;s:3:"php";}i:2;i:3500;}i:97;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3583;}i:98;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:3404;i:1;i:3582;i:2;i:3;i:3;s:19:"Deleting a tag rule";}i:2;i:3583;}i:99;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:47:"Adding a protocol to use when downloading files";i:1;i:3;i:2;i:3583;}i:2;i:3583;}i:100;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:3583;}i:101;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3640;}i:102;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:99:"
By default, the plugin will only download a file and embed it if the file will be downloaded over ";}i:2;i:3641;}i:103;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"HTTP";}i:2;i:3740;}i:104;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:", HTTPS or ";}i:2;i:3744;}i:105;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"FTP";}i:2;i:3755;}i:106;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:78:".  If you'd like to add a new protocol to this list simply call addProtocol().";}i:2;i:3758;}i:107;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3836;}i:108;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:83:"
$plugin->addProtocol("file"); // as in 'file:///foo/bar.txt' without the :// part
";i:1;s:3:"php";}i:2;i:3843;}i:109;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3940;}i:110;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:3583;i:1;i:3939;i:2;i:3;i:3;s:47:"Adding a protocol to use when downloading files";}i:2;i:3940;}i:111;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"Removing a protocol";i:1;i:3;i:2;i:3940;}i:2;i:3940;}i:112;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:3940;}i:113;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3969;}i:114;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:"
Removing a protocol is done through removeProtocol().";}i:2;i:3970;}i:115;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4024;}i:116;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:57:"
$plugin->removeProtocol('ftp'); //Disable FTP downloads
";i:1;s:3:"php";}i:2;i:4031;}i:117;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4102;}i:118;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:3940;i:1;i:4101;i:2;i:3;i:3;s:19:"Removing a protocol";}i:2;i:4102;}i:119;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:22:"Local and remote files";i:1;i:2;i:2;i:4102;}i:2;i:4102;}i:120;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:4102;}i:121;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4136;}i:122;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:102:"
The plugin will actually detect paths inside the permitted tags within your filesystem.  For example:";}i:2;i:4137;}i:123;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4239;}i:124;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:34:"
<img src="/path/to/image.gif" />
";i:1;N;}i:2;i:4246;}i:125;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4288;}i:126;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:97:"For this to work you need to specify an absolute path to the file, starting with a forward slash.";}i:2;i:4290;}i:127;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4387;}i:128;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4387;}i:129;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:"You can disable remote and/or local file embedding by using $plugin";}i:2;i:4389;}i:130;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"->";}i:2;i:4456;}i:131;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"setEmbedRemoteFiles(false) and/or $plugin";}i:2;i:4458;}i:132;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"->";}i:2;i:4499;}i:133;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"setEmbedLocalFiles(false).";}i:2;i:4501;}i:134;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4527;}i:135;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4528;}i:136;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:4102;i:1;i:0;i:2;i:2;i:3;s:22:"Local and remote files";}i:2;i:4528;}i:137;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4528;}}