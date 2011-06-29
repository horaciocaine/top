a:24:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:26:"How to use CommandListener";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:41;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:42;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:569:"A plugin which implements the Swift_Events_CommandListener interface will be invoked whenever Swift has sent a command.  The CommandEvent object which is passed is the same object as the one a plugin implementing BeforeCommandListener would have already seen.  Therefore, any changes made before the command is issued will be also seen here after the command has been issued.  More often than not, BeforeCommandListener will be more useful than CommandListener.  We could use something like this to monitor the number of bytes being sent through Swift (outgoing bytes).";}i:2;i:43;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:612;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:612;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"Here";}i:2;i:614;}i:12;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:618;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"s the interface:";}i:2;i:619;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:635;}i:15;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:427:"
/**
 * Contains the list of methods a plugin requiring the use of a CommandEvent must implement
 * @package Swift_Events
 * @author Chris Corbyn <chris@w3style.co.uk>
 */
interface Swift_Events_CommandListener extends Swift_Events_Listener
{
	/**
	 * Executes when Swift sends a command
	 * @param Swift_Events_CommandEvent Information about the command sent
	 */
	public function commandSent(Swift_Events_CommandEvent $e);
}
";i:1;s:3:"php";}i:2;i:642;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1081;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"And here";}i:2;i:1083;}i:18;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:1091;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"s a basic bandwidth monitor for outgoing bytes:";}i:2;i:1092;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1139;}i:21;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:565:"
class OutgoingBandwidthPlugin implements Swift_Events_CommandListener
{
    protected $bytes = 0;
    
    public function commandSent(Swift_Events_CommandEvent $e)
    {
        $command = $e->getString();
        $length = strlen($command) + 2; //Remember to add the CRLF
        $this->addBytes($length);
    }
    
    public function addBytes($bytes)
    {
        $this->bytes += $bytes;
    }
    
    public function setBytes($bytes)
    {
        $this->bytes = $bytes;
    }
    
    public function getBytes()
    {
        return $this->bytes;
    }
}
";i:1;s:3:"php";}i:2;i:1146;}i:22;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1723;}i:23;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1723;}}