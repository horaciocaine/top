a:35:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:28:"Writing a DisconnectListener";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:43;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:77:"
A DisconnectListener will be notified every time Swift disconnects from the ";}i:2;i:44;}i:8;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:121;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:182:" server or local MTA.  A plugin which implements the Swift_Events_DisconnectListener interface will be passed an instance of Swift_Events_DisconnectEvent when a disconnection occurs.";}i:2;i:125;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:307;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:307;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"Here's the event listener interface:";}i:2;i:309;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:345;}i:14;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:449:"
/**
 * Contains the list of methods a plugin requiring the use of a DisconnectEvent must implement
 * @package Swift_Events
 * @author Chris Corbyn <chris@w3style.co.uk>
 */
interface Swift_Events_DisconnectListener extends Swift_Events_Listener
{
	/**
	 * Executes when Swift closes a connection
	 * @param Swift_Events_DisconnectEvent Information about the connection
	 */
	public function disconnectPerformed(Swift_Events_DisconnectEvent $e);
}
";i:1;s:3:"php";}i:2;i:352;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:813;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:183:"If you're using PHP5, you must declare that your plugin implements this interface.  For PHP4, all you need to do is make sure the method disconnectPerformed($e) exists in your plugin.";}i:2;i:815;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:998;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:998;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"The PHP5 plugin skeleton would be as follows:";}i:2;i:1000;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1045;}i:21;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:139:"
class MyPlugin implements Swift_Events_DisconnectListener
{
    public function disconnectPerformed(Swift_Events_DisconnectEvent $e) {}
}
";i:1;s:3:"php";}i:2;i:1052;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1203;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"In PHP4, that simply becomes:";}i:2;i:1205;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1234;}i:25;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:91:"
class MyPlugin extends Swift_Events_Listener
{
    function disconnectPerformed(&$e) {}
}
";i:1;s:3:"php";}i:2;i:1241;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1344;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:123:"For the sake of simplicity, we'll do something a little vicious and force Swift to reconnect by using a DisconnectListener.";}i:2;i:1346;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1469;}i:29;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:220:"
class ForceReconnectPlugin implements Swift_Events_DisconnectListener
{
    public function disconnectPerformed(swift_Events_DisconnectEvent $e)
    {
        $swift = $e->getSwift();
        $swift->connect();
    }
}
";i:1;s:3:"php";}i:2;i:1476;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1708;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:151:"You need to remember that in PHP4, you will absolutely need to use the reference operator or you'll be working with a copy of Swift and it won't work.
";}i:2;i:1710;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1860;}i:33;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1860;}i:34;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1860;}}