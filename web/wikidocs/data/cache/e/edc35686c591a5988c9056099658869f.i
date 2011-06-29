a:55:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:25:"Writing a ConnectListener";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:40;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:41;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:90:"As the name suggests, a ConnectListener will be notified every time Swift connects to the ";}i:2;i:42;}i:9;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:132;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:181:" server or other MTA.  A plugin which implements the Swift_Events_ConnectListener interface will be passed an instance of Swift_Events_ConnectEvent when a connection is established.";}i:2;i:136;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:317;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:317;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:74:"The interface for a plugin which will be a ConnectListener is shown below:";}i:2;i:319;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:393;}i:15;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:437:"
/**
 * Contains the list of methods a plugin requiring the use of a ConnectEvent must implement
 * @package Swift_Events
 * @author Chris Corbyn <chris@w3style.co.uk>
 */
interface Swift_Events_ConnectListener extends Swift_Events_Listener
{
	/**
	 * Executes when Swift initiates a connection
	 * @param Swift_Events_ConnectEvent Information about the connection
	 */
	public function connectPerformed(Swift_Events_ConnectEvent $e);
}
";i:1;s:3:"php";}i:2;i:400;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:849;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"If you";}i:2;i:851;}i:18;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:857;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:213:"re using PHP5, you must declare that your plugin implements this interface.  For PHP4, all you need to do is make sure the method connectPerformed($e) exists in you plugin.  You cannot using type-checking in PHP4.";}i:2;i:858;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1071;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1071;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"In PHP5, your plugin would be declared like this:";}i:2;i:1073;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1122;}i:24;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:130:"
class MyPlugin implements Swift_Events_ConnectListener
{
    public function connectPerformed(Swift_Events_ConnectEvent $e) {}
}
";i:1;s:3:"php";}i:2;i:1129;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1271;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"In PHP4, that simply becomes:";}i:2;i:1273;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1302;}i:28;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:88:"
class MyPlugin extends Swift_Events_Listener
{
    function connectPerformed(&$e) {}
}
";i:1;s:3:"php";}i:2;i:1309;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1409;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"Let";}i:2;i:1411;}i:31;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:1414;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:356:"s take the example that you want to add a custom line to the log whenever Swift connects.  All event objects have a common method of getSwift() which returns a reference to the instance of Swift which generated the event.  Working with Swift here is just like working with it anywhere else, so adding a line to the log at connect is a pretty basic example.";}i:2;i:1415;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1771;}i:34;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:393:"
class ConnectLoggerPlugin implements Swift_Events_ConnectListener
{
    public function connectPerformed(swift_Events_ConnectEvent $e)
    {
        $swift = $e->getSwift();
        if (!($enabled = $swift->log->isEnabled()))
            $swift->log->enable();
        $swift->log->add("Swift connected and this plugin saw it happen!");
        if (!$enabled) $swift->log->disable();
    }
}
";i:1;s:3:"php";}i:2;i:1778;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2183;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:96:"You need to remember that in PHP4, you will absolutely need to use the reference operator or you";}i:2;i:2185;}i:37;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:2281;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"ll be working with a copy of Swift and it won";}i:2;i:2282;}i:39;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:2327;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"t work.";}i:2;i:2328;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2335;}i:42;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2335;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:92:"You can also get a copy of the connection object that established the connection by calling:";}i:2;i:2337;}i:44;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2429;}i:45;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:36:"
$connection = $e->getConnection();
";i:1;s:3:"php";}i:2;i:2436;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2484;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"It";}i:2;i:2486;}i:48;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:2488;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"s unlikely you";}i:2;i:2489;}i:50;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:2503;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:83:"d ever want to tamper with the connection, but the ability exists if you really do.";}i:2;i:2504;}i:52;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2587;}i:53;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2588;}i:54;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2588;}}