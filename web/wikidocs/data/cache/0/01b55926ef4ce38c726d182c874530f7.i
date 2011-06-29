a:46:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"Swift_Connection_Rotator";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:39;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:40;}i:8;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:41;}i:9;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:43;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"Synopsis:";}i:2;i:45;}i:11;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:54;}i:12;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:56;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:58;}i:14;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:59;}i:15;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:61;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:"new Swift_Connection_Rotator( [array connections] )";}i:2;i:63;}i:17;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:114;}i:18;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:116;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:118;}i:20;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:118;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:183:"Much like the Multi connection, the Rotator connection also provides redundancy.  However, in addition it also provides a fairly unintelligent way to load balance between connections.";}i:2;i:120;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:303;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:303;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:209:"You provide it with a collection of different connections (possibly including some other rotating ones if you're crazy enough to do so ;)) and it tries each one in turn until one works, the rest are marked as ";}i:2;i:305;}i:25;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:514;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"dead";}i:2;i:515;}i:27;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:519;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:207:" internally and will not be retried.  Upon sending an email with EasySwift (or Swift), the connection will rotated to the next one in sequence so the subsequent email will be sent through a different server.";}i:2;i:520;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:727;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:727;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:436:"This is not as expensive as it may sound.  Once a connection has been established, it is kept open persistently until you call the close() method in the EasySwift class.  Connections are not all opened unless they are needed neither (i.e. they open when the connection rotates if they are not already open, not upon instantiation), therefore, if you provide a lot of connections it's possible that some of them will never even be tried.";}i:2;i:729;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1165;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1165;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:292:"Internally, a plugin is used to invoke the rotation.  The plugin used is Swift_Plugin_ConnectionRotator and simply listens for SendEvents being dispatched by Swift.  You don't really need to worry about this, but if it's of any use the plugin is automatically registered in Swift with the ID ";}i:2;i:1167;}i:35;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1459;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"_ROTATOR";}i:2;i:1460;}i:37;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1468;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:1469;}i:39;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1470;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1470;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:155:"Like with the Multi connection, this connection either takes an array of connections in the constructor, or uses the addConnection() method to populate it.";}i:2;i:1472;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1627;}i:43;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:717:"
require_once "lib/EasySwift.php";
require_once "lib/Swift/Connection/Rotator.php";
require_once "lib/Swift/Connection/SMTP.php";

//Populate an array if you want to provide connections at instantiation
$connections = array();

$conn1 =& new Swift_Connection_SMTP("smtp.host1.tld");
$conn1->setUsername("user");
$conn1->setPassword("pass");
$connections[] =& $conn1;

$conn2 =& new Swift_Connection_SMTP("smtp.host2.tld");
$connections[] =& $conn2;

//Start swift as normal
$swift =& new EasySwift(new Swift_Connection_Rotator($connections));

//Do some stuff
$swift->send( ..... );

//Feel free to throw in new connections at run-time
$swift->connection->addConnection(new Swift_Connection_SMTP("smtp.host3.tld"));

";i:1;s:3:"php";}i:2;i:1634;}i:44;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2363;}i:45;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2363;}}