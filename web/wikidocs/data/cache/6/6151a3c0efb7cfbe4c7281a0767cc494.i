a:58:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:22:"Swift_Connection_Multi";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:37;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:38;}i:8;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:39;}i:9;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:41;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"Synopsis:";}i:2;i:43;}i:11;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:52;}i:12;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:54;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:56;}i:14;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:57;}i:15;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:59;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"new Swift_Connection_Multi( [array connections] )";}i:2;i:61;}i:17;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:110;}i:18;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:112;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:114;}i:20;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:114;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:159:"The Multi connection is a mechanism which contains within itself any number of connections you give it.  These connections can be of any combination of types (";}i:2;i:116;}i:22;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:275;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:115:", Sendmail, NativeMail, other instances of Multi etc etc).  It's a way of providing redundancy in the event that a ";}i:2;i:279;}i:24;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:394;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:62:" server is unavailable at the time of the request for example.";}i:2;i:398;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:460;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:460;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:209:"Each connection is tried in turn until one is sucessfull.  If any fails, they are blacklisted for the duration of this request so even when disconnecting and reconnecting, dead connections will not be retried.";}i:2;i:462;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:671;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:671;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:99:"You should populate the class with connections in order of preference, most preferable added first.";}i:2;i:673;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:772;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:772;}i:34;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:774;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"Providing an array of connections:";}i:2;i:776;}i:36;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:810;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:812;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:818;}i:39;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:786:"
require_once "lib/EasySwift.php";
require_once "lib/Swift/Connection/Multi.php";
require_once "lib/Swift/Connection/SMTP.php";
require_once "lib/Swift/Connection/NativeMail.php";

$connections = array();

//Start adding connections
$conn1 =& new Swift_Connection_SMTP("smtp.host.tld");
$connections[] =& $conn1;

//It's safe to use authentication providing you set it in the connection
$conn2 =& new EasySwift_Connection_SMTP("smtp.host2.tld", 465);
$conn2->setUsername("my-user");
$conn2->setPassword("mypass");
$connections[] =& $conn2;

//It's probably a good idea to always fall back on mail() if all else fails
$connections[] =& new Swift_Connection_NativeMail();

//And instantiate swift with these connections
$swift =& new EasySwift(new Swift_Connection_Multi($connections));

";i:1;s:3:"php";}i:2;i:818;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1616;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:92:"There is also the addConnection() method if you need to throw in new connections at runtime.";}i:2;i:1618;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1710;}i:43;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1710;}i:44;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1712;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"Using addConnection()";}i:2;i:1714;}i:46;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1735;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1737;}i:48;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1743;}i:49;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:377:"
require_once "lib/EasySwift.php";
require_once "lib/Swift/Connection/Multi.php";
require_once "lib/Swift/Connection/SMTP.php";
require_once "lib/Swift/Connection/NativeMail.php";

$multi =& new Swift_Connection_Multi();

$multi->addConnection(new Swift_Connection_SMTP("host.tld"));
$multi->addConnection(new Swift_Connection_NativeMail());

$swift =& new EasySwift($multi);

";i:1;s:3:"php";}i:2;i:1743;}i:50;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2132;}i:51;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:2134;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"NOTE:";}i:2;i:2136;}i:53;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:2141;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:108:" The use of the reference operator (=&) is for PHP4 compatibility only.  If you're using PHP5, leave it out.";}i:2;i:2143;}i:55;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2251;}i:56;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2252;}i:57;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2252;}}