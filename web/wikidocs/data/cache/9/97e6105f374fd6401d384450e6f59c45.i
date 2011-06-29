a:123:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:56:"Swift Message Decorator Plugin (For Customized Messages)";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:74;}i:7;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:1;i:1;i:73;i:2;i:1;i:3;s:56:"Swift Message Decorator Plugin (For Customized Messages)";}i:2;i:74;}i:8;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:34:"Introduction to message decorating";i:1;i:2;i:2;i:74;}i:2;i:74;}i:9;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:74;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:120;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:494:"
Swift Mailer uses a caching system which operates on small units of the e-mail you compose.  If something's already been encoded/rendered and you try to encode/render it again swift reads the cache.  This offers a huge performance boost when sending the same message to many recipients.  Even once the message has been cached, you can change items such as the subject, body or transfer-encoding and Swift will use most of the message from the cache and re-render only those bits which changed.";}i:2;i:121;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:615;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:615;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:"For this reason, you need only create one instance of ";}i:2;i:617;}i:15;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:671;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"Swift_Message";}i:2;i:673;}i:17;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:686;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:178:" when sending to many recipients.  If you want to change the message for each recipient you can just loop over all the recipients and modify the message in the loop, for example:";}i:2;i:688;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:866;}i:20;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:189:"
while ($row = mysql_fetch_assoc($result))
{
    $message->setSubject("Order no. " . $row["order"] . " has been processed");
    $swift->send($message, $row["recipient"], $your_address);
}
";i:1;s:3:"php";}i:2;i:873;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1074;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:190:"However, although it's logical, when you start adding attachments, mime part and other fancy bits and pieces this may just become a bit of an unneccessary (I never spell that right!) hassle.";}i:2;i:1076;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1266;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1266;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"As of version 3.1, Swift includes a plugin called ";}i:2;i:1268;}i:26;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1318;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"Swift_Plugin_Decorator";}i:2;i:1320;}i:28;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1342;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:218:".  This plugin is intended to give you the flexibility to customize a single message for each individual recipient.  Whether you choose to use batchSend() or just send() inside a loop, this plugin will work regardless.";}i:2;i:1344;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1562;}i:31;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1564;}i:32;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:74;i:1;i:1563;i:2;i:2;i:3;s:34:"Introduction to message decorating";}i:2;i:1564;}i:33;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:16:"Using the plugin";i:1;i:2;i:2;i:1564;}i:2;i:1564;}i:34;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1564;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1592;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:253:"
The basic use of the plugin simply takes a 2-dimensional array of replacements, where each key in the first dimension is the address and the second dimension becomes a mapping of replacments.  To make this clear, let's look at a really obvious example:";}i:2;i:1593;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1846;}i:38;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:965:"
<?php

/** THIS CODE REQUIRES Swift 3.1 OR HIGHER **/

require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";
require_once "lib/Swift/Plugin/Decorator.php";

//Instantiate Swift as usual
$swift =& new Swift(new Swift_Connection_SMTP("your-server.tld"));

//Create the message, using some unique variables to search for
$message =& new Swift_Message("Hey {name}, what's up?", "It's a bit {weather} today wouldn't you say?");

//Specify the list of replacements as a 2-d array
$replacements = array(
    "joe@bloggs.com" => array("{name}" => "Joe", "{weather}" => "chilly"),
    "fred@perry.com" => array("{name}" => "Fred", "{weather}" => "muggy")
);

//Load the plugin with these replacements
$swift->attachPlugin(new Swift_Plugin_Decorator($replacements), "decorator");

//Send messages
$swift->send($message, "fred@perry.com", "you@your-address.com");
$swift->send($message, "joe@bloggs.com", "you@your-address.com");

$swift->disconnect();
";i:1;s:3:"php";}i:2;i:1853;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2830;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:169:"In the above example we are doing nothing more than performing a basic send to two different recipients.  This is just the start, you can do a lot more with this plugin.";}i:2;i:2832;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3001;}i:42;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3001;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:65:"The emails the two recipients will receive will looks like this:
";}i:2;i:3003;}i:44;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3068;}i:45;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:103:"Subject: Hey Fred, what's up?
--------------------------------
It's a bit muggy today wouldn't you say?";}i:2;i:3068;}i:46;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:103:"Subject: Hey Joe, what's up?
--------------------------------
It's a bit chilly today wouldn't you say?";}i:2;i:3179;}i:47;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3290;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:153:"More than likely, if you're thinking of using this plugin it's becuase you have a more complicated requirement than this basic example so let's continue.";}i:2;i:3292;}i:49;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3445;}i:50;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3445;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:59:"If you attach parts, Swift will replace variables here too:";}i:2;i:3447;}i:52;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3506;}i:53;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:195:"
$message->attach(new Swift_Message_Part("Order number: {order} sent on {date}"));
$message->attach(new Swift_Message_Part("<strong>Order number:</strong> {order} sent on {date}", "text/html"));
";i:1;s:3:"php";}i:2;i:3513;}i:54;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3720;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:"And even tricky things like file attachments can have unique names:";}i:2;i:3722;}i:56;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3789;}i:57;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:136:"
$message->attach(new Swift_Message_Attachment(
    new Swift_File("generic_plan.pdf"), "{name}s_action_plan.pdf", "application/pdf"));
";i:1;s:3:"php";}i:2;i:3796;}i:58;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3944;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:177:"If you choose to use some other syntax for your variables this will work just fine because the plugin requires that you provide the full identifier of the variable anyway (i.e. ";}i:2;i:3946;}i:60;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4123;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"{foo}";}i:2;i:4124;}i:62;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4129;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:" not just ";}i:2;i:4130;}i:64;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:4140;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"foo";}i:2;i:4141;}i:66;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4144;}i:67;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:").  You may choose to use something like ";}i:2;i:4145;}i:68;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:4186;}i:69;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"%foo%";}i:2;i:4188;}i:70;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:4193;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:" or even ";}i:2;i:4195;}i:72;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:4204;}i:73;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"*&&^foo&*&";}i:2;i:4206;}i:74;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:4216;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:" if you're a bit nutty.";}i:2;i:4218;}i:76;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4241;}i:77;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4241;}i:78;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:64:"In our first example, we'd get the exact same result if we used ";}i:2;i:4243;}i:79;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:4307;}i:80;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"batchSend()";}i:2;i:4309;}i:81;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:4320;}i:82;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:148:" to send the email to Joe and Fred.  Whatever method you use to send the email to the recipients, providing they are the main recipient (i.e. not a ";}i:2;i:4322;}i:83;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:4470;}i:84;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"Cc";}i:2;i:4472;}i:85;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:4474;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:" or ";}i:2;i:4476;}i:87;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:4480;}i:88;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"Bcc";}i:2;i:4482;}i:89;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:4485;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:" recipient) this plugin will just work.";}i:2;i:4487;}i:91;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4526;}i:92;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:324:"
//Load the plugin with these replacements
$swift->attachPlugin(new Swift_Plugin_Decorator($replacements), "decorator");

$recipients =& new RecipientList();
$recipients->addTo("joe@bloggs.com");
$recipients->addTo("fred@perry.com");
//Send with batchSend()
$swift->batchSend($message, $recipients, "you@your-address.com");
";i:1;s:3:"php";}i:2;i:4533;}i:93;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4871;}i:94;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:1564;i:1;i:4870;i:2;i:2;i:3;s:16:"Using the plugin";}i:2;i:4871;}i:95;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:71:"Extending the replacement functionality (recommended for Database work)";i:1;i:2;i:2;i:4871;}i:2;i:4871;}i:96;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:4871;}i:97;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4954;}i:98;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:601:"
Filling a huge array with the replacements for all the recipients you're going to work with is probably not particularly appetising if you're sending to 1000 recipients.  The plugin was deliberately designed to make it easy to extend so you can hook it right into your database or use whatever means you need to retreive the replacements for each recipient.  Providing you are able to get the replacments you need if you are given the email address to retreive them for then this is going to be the most ideal solution for you.  By default, the plugin takes your array and gives it to a class called ";}i:2;i:4955;}i:99;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:5556;}i:100;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"Swift_Plugin_Decorator_Replacements";}i:2;i:5558;}i:101;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:5593;}i:102;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:", it's this class you need to extend.";}i:2;i:5595;}i:103;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5632;}i:104;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5632;}i:105;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:61:"The only method you'll want to override out of neccessity is ";}i:2;i:5634;}i:106;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:5695;}i:107;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"Swift_Plugin_Decroator_Replacements";}i:2;i:5697;}i:108;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"->";}i:2;i:5732;}i:109;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"getReplacementsFor()";}i:2;i:5734;}i:110;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:5754;}i:111;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:96:".  This method takes the address as an argument and returns the map of replacements as an array.";}i:2;i:5756;}i:112;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5852;}i:113;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:1218:"
<?php

/** THIS CODE REQUIRES Swift 3.1 OR HIGHER **/

require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";
require_once "lib/Swift/Plugin/Decorator.php";

//Instantiate Swift as usual
$swift =& new Swift(new Swift_Connection_SMTP("your-server.tld"));

//Create the message, using some unique variables to search for
$message =& new Swift_Message("Hey {name}, what's up?", "It's a bit {weather} today wouldn't you say?");

//Extend the replacements class
class Replacements extends Swift_Plugin_Decorator_Replacements {
    function getReplacementsFor($address) {
        $query = "select
        name as `{name}`, weather as `{weather}`
        from buddies
        where email = '" . mysql_real_escape_string($address) . "'";
        $result = mysql_query($query);
        if (mysql_num_rows($result) > 0)
        {
            return mysql_fetch_assoc($result);
        }
    }
}

//Load the plugin with the extended replacements class
$swift->attachPlugin(new Swift_Plugin_Decorator(new Replacements()), "decorator");

//Send messages
$swift->send($message, "fred@perry.com", "you@your-address.com");
$swift->send($message, "joe@bloggs.com", "you@your-address.com");

$swift->disconnect();
";i:1;s:3:"php";}i:2;i:5859;}i:114;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7089;}i:115;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:106:"This plugin really does give you a lot of flexibility when sending to a list, getting to know it is fun :)";}i:2;i:7091;}i:116;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7197;}i:117;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7197;}i:118;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"Enjoy!
";}i:2;i:7199;}i:119;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7205;}i:120;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7205;}i:121;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:4871;i:1;i:0;i:2;i:2;i:3;s:71:"Extending the replacement functionality (recommended for Database work)";}i:2;i:7205;}i:122;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:7205;}}