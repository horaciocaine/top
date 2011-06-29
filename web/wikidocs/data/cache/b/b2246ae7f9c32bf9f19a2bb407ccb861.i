a:35:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:27:"How to use ResponseListener";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:42;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:265:"
A plugin which implements Swift_Events_ResponseListener will be invoked every time Swift receives a new response from the connection.  This can come in useful if used in combination with a CommandListener because if you know what response codes to expect, you can ";}i:2;i:43;}i:8;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:308;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"correct";}i:2;i:309;}i:10;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:316;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:129:" problems by issuing the RSET command or whatever other action may be appropriate.  It probably helps to know a little about the ";}i:2;i:317;}i:12;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:446;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:" protocol before attempting such things however.";}i:2;i:450;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:498;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:498;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:197:"The plugin receives an instance of Swift_Events_ResponseEvent, which incidentally is the object which gets returned from command() inside Swift.  Therefore it would also be technically possible to ";}i:2;i:500;}i:17;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:697;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"trick";}i:2;i:698;}i:19;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:703;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:172:" Swift into believing that a different response was issued to what was actually issued.  Would that be useful?  To be honest, I don't know, I've never had cause to do it ;)";}i:2;i:704;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:876;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:876;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"Here's the interface:";}i:2;i:878;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:899;}i:25;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:436:"
/**
 * Contains the list of methods a plugin requiring the use of a ResponseEvent must implement
 * @package Swift_Events
 * @author Chris Corbyn <chris@w3style.co.uk>
 */
interface Swift_Events_ResponseListener extends Swift_Events_Listener
{
	/**
	 * Executes when Swift receives a response
	 * @param Swift_Events_ResponseEvent Information about the response
	 */
	public function responseReceived(Swift_Events_ResponseEvent $e);
}
";i:1;s:3:"php";}i:2;i:906;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1354;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:156:"And here's an example of how you might kid Swift that it always receives the response codes it expects.  Note that we need to implement two interfaces here.";}i:2;i:1356;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1512;}i:29;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:421:"
class NeverArguesBackPlugin
    implements Swift_Events_BeforeCommandListener, Swift_Events_ResponseListener
{
    protected $code;
    
    public function beforeCommandSent(Swift_Events_CommandEvent $e)
    {
        $this->code = $e->getCode();
    }

    public function responseReceived(Swift_Events_ResponseEvent $e)
    {
        if ($this->code)
        {
            $e->setCode($this->code);
        }
    }
}
";i:1;s:3:"php";}i:2;i:1519;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1952;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"Nasty indeed! :)";}i:2;i:1954;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1970;}i:33;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1971;}i:34;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1971;}}