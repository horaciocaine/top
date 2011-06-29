a:48:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:32:"How to use BeforeCommandListener";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:47;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:130:"
A plugin which implements the Swift_Events_BeforeCommandListener interface will be invoked every time Swift is about to issue an ";}i:2;i:48;}i:8;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:178;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:437:" command.  The plugin will have access to the command being executed and any changes made to the command inside the plugin will be executed at the time when the command would normally execute.  Plugins which implement either the CommandListener or BeforeCommandListener are most likely listening for those event by means of tracking the progress of sending an email rather than watching the actual commands being issued, but either way, ";}i:2;i:182;}i:10;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:619;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"every";}i:2;i:621;}i:12;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:626;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:" command that's sent to the ";}i:2;i:628;}i:14;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:656;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:61:" server will be first passed via any BeforeCommandListener's.";}i:2;i:660;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:721;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:721;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:"The interface looks like this:";}i:2;i:723;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:753;}i:20;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:471:"
/**
 * Contains the list of methods a plugin requiring the use of a CommandEvent, before it is sent must implement
 * @package Swift_Events
 * @author Chris Corbyn <chris@w3style.co.uk>
 */
interface Swift_Events_BeforeCommandListener extends Swift_Events_Listener
{
	/**
	 * Executes just before Swift sends a command
	 * @param Swift_Events_CommandEvent Information about the being command sent
	 */
	public function beforeCommandSent(Swift_Events_CommandEvent $e);
}
";i:1;s:3:"php";}i:2;i:760;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1243;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:90:"If you're going to make use of this plugin, I'll assume you understand a little about the ";}i:2;i:1245;}i:23;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:1335;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:" protocol.  If you don't have the foggiest clue about how ";}i:2;i:1339;}i:25;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:1397;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:153:" works then implementing the CommandListener or BeforeCommandListener probably isn't going to be of much use to you.  Neither will the following example.";}i:2;i:1401;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1554;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1554;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"The example given below shows how you could use a BeforeCommandListener to copy ";}i:2;i:1556;}i:30;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1636;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"all";}i:2;i:1638;}i:32;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1641;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:55:" emails sent to yourself.  For those not familiar with ";}i:2;i:1643;}i:34;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:1698;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:", the ";}i:2;i:1702;}i:36;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1708;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"DATA";}i:2;i:1709;}i:38;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1713;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:76:" command is the last command to be issued before the email is sent, and the ";}i:2;i:1714;}i:40;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1790;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"RCPT TO";}i:2;i:1791;}i:42;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1798;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:" commands are the commands which specify the recipients.";}i:2;i:1799;}i:44;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1855;}i:45;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:656:"
class CopyEmailsToSender implements Swift_Events_BeforeCommandListener
{
    protected $sender;
    
    public function __construct($sender)
    {
        $this->setSender($sender);
    }

    public function setSender(Swift_Address $sender)
    {
        $this->sender = $sender;
    }
    
    public function getSender()
    {
        return $this->sender;
    }
    
    public function beforeCommandSent(Swift_Events_CommandEvent $e)
    {
        $command = $e->getString();
        if ($command == "DATA")
        {
            $swift = $e->getSwift();
            $swift->command("RCPT TO: " . $this->getSender()->build(true));
        }
    }
}
";i:1;s:3:"php";}i:2;i:1862;}i:46;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2531;}i:47;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2531;}}