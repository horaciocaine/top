a:23:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:30:"Loading new plugins into Swift";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:45;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:206:"
Plugins in Swift are nothing more than event listeners (a sort of observer).  If you download a plugin, or want to load one of the packaged ones you first need to include the file in your script using the ";}i:2;i:46;}i:8;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:252;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"include";}i:2;i:253;}i:10;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:260;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:" or ";}i:2;i:261;}i:12;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:265;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"require";}i:2;i:266;}i:14;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:273;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:180:" keywords.  You then use the attachPlugin() method in Swift to pass an instance of the plugin to Swift.  Swift quite simply sends messages (events) to the plugin at relevent times.";}i:2;i:274;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:454;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:454;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:227:"If the plugin comes with a little documentation, be sure to read it to understand how it works.  Some plugins may require information to be passed to the constructor, or may need to be manipulated after being loaded into Swift.";}i:2;i:456;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:683;}i:20;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:338:"
require_once "lib/Swift.php";
require_once "lib/Swift/Connection/NativeMail.php";
require_once "lib/Swift/Plugin/Example.php";

$swift =& new Swift(new Swift_Connection_NativeMail());

//Load the plugin, and give it a name
$swift->attachPlugin(new Swift_Plugin_Example(), "SOME_NAME");

//Continue working as normal
$swift->send( ... );
";i:1;s:3:"php";}i:2;i:690;}i:21;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1040;}i:22;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1040;}}