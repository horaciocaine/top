a:32:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:29:"How to use BeforeSendListener";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:44;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:45;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:153:"The two event listeners in Swift which are likely to be the most heavily implemented are SendListener and BeforeSendListener.  BeforeSendListener is run ";}i:2;i:46;}i:9;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:199;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"before";}i:2;i:201;}i:11;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:207;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:226:" the message gets sent.  You will know who the recipients are and what the message is at this stage, but Swift will not yet have sent the message so you can change recipients and/or modify the message and then it will be sent.";}i:2;i:209;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:435;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:435;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:65:"The event listener interface for BeforeSendEvent looks like this:";}i:2;i:437;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:502;}i:17;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:469:"
/**
 * Contains the list of methods a plugin requiring the use of a SendEvent before the message is sent must implement
 * @package Swift_Events
 * @author Chris Corbyn <chris@w3style.co.uk>
 */
interface Swift_Events_BeforeSendListener extends Swift_Events_Listener
{
	/**
	 * Executes just before Swift sends a message
	 * @param Swift_Events_SendEvent Information about the message being sent
	 */
	public function beforeSendPerformed(Swift_Events_SendEvent $e);
}
";i:1;s:3:"php";}i:2;i:509;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:990;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:107:"If you were to write an empty plugin implementing this interface in PHP5 your code would look as a follows:";}i:2;i:992;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1099;}i:21;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:133:"
class MyPlugin implements Swift_Events_BeforeSendListener
{
    public function beforeSendPerformed(Swift_Events_SendEvent $e) {}
}
";i:1;s:3:"php";}i:2;i:1106;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1251;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"Whereas the PHP4 implementation is much looser:";}i:2;i:1253;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1300;}i:25;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:91:"
class MyPlugin extends Swift_Events_Listener
{
    function beforeSendPerformed(&$e) {}
}
";i:1;s:3:"php";}i:2;i:1307;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1410;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:137:"A good example is probably modifying the subject line of each message to include the name of the recipient.  This is actually quite easy.";}i:2;i:1412;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1549;}i:29;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:1033:"
class PersonalisedSubjectPlugin implements Swift_Events_BeforeSendEvent
{
    protected $subject = "";
    
    public function __construct($subject)
    {
        $this->setSubject($subject);
    }
    
    public function setSubject($subject)
    {
        $this->subject = (string) $subject;
    }
    
    public function getSubject()
    {
        return $this->subject;
    }
    
    public function getSubjectReplaced($replacement)
    {
        return str_replace("{replace_me}", $replacement, $this->getSubject());
    }
    
    public function beforeSendPerformed(Swift_Events_SendEvent $e)
    {
        $message = $e->getMessage();
        $recipients = $e->getRecipients();
        $to = $recipients->getTo();
        //We can only set the name if there's only one To: recipient
        if (count($to) == 1)
        {
            $element = array_pop($to);
            $name = $element->getName();
        }
        else { $name = "Customer"; }
        $message->setSubject($this->getSubjectReplaced($name));
    }
}
";i:1;s:3:"php";}i:2;i:1556;}i:30;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2601;}i:31;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2601;}}