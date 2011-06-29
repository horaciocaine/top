a:152:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:56:"Swift Message Decorator Plugin (For Customized Messages)";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:73;}i:7;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:1;i:1;i:72;i:2;i:1;i:3;s:56:"Swift Message Decorator Plugin (For Customized Messages)";}i:2;i:73;}i:8;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:34:"Introduction to message decorating";i:1;i:2;i:2;i:73;}i:2;i:73;}i:9;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:73;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:119;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:120;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:105:"Swift Mailer uses a caching system which operates on small units of the e-mail you compose.  If something";}i:2;i:121;}i:13;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:226;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:387:"s already been encoded/rendered and you try to encode/render it again swift reads the cache.  This offers a huge performance boost when sending the same message to many recipients.  Even once the message has been cached, you can change items such as the subject, body or transfer-encoding and Swift will use most of the message from the cache and re-render only those bits which changed.";}i:2;i:227;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:614;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:614;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:"For this reason, you need only create one instance of ";}i:2;i:616;}i:18;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:670;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"Swift_Message";}i:2;i:672;}i:20;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:685;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:178:" when sending to many recipients.  If you want to change the message for each recipient you can just loop over all the recipients and modify the message in the loop, for example:";}i:2;i:687;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:865;}i:23;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:189:"
while ($row = mysql_fetch_assoc($result))
{
    $message->setSubject("Order no. " . $row["order"] . " has been processed");
    $swift->send($message, $row["recipient"], $your_address);
}
";i:1;s:3:"php";}i:2;i:872;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1073;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"However, although it";}i:2;i:1075;}i:26;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:1095;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:169:"s logical, when you start adding attachments, mime part and other fancy bits and pieces this may just become a bit of an unneccessary (I never spell that right!) hassle.";}i:2;i:1096;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1265;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1265;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"As of version 3.1, Swift includes a plugin called ";}i:2;i:1267;}i:31;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1317;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"Swift_Plugin_Decorator";}i:2;i:1319;}i:33;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1341;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:218:".  This plugin is intended to give you the flexibility to customize a single message for each individual recipient.  Whether you choose to use batchSend() or just send() inside a loop, this plugin will work regardless.";}i:2;i:1343;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1561;}i:36;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1563;}i:37;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:73;i:1;i:1562;i:2;i:2;i:3;s:34:"Introduction to message decorating";}i:2;i:1563;}i:38;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:16:"Using the plugin";i:1;i:2;i:2;i:1563;}i:2;i:1563;}i:39;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1563;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1591;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:1592;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:216:"The basic use of the plugin simply takes a 2-dimensional array of replacements, where each key in the first dimension is the address and the second dimension becomes a mapping of replacments.  To make this clear, let";}i:2;i:1593;}i:43;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:1809;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"s look at a really obvious example:";}i:2;i:1810;}i:45;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1845;}i:46;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:965:"
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
";i:1;s:3:"php";}i:2;i:1852;}i:47;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2829;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:169:"In the above example we are doing nothing more than performing a basic send to two different recipients.  This is just the start, you can do a lot more with this plugin.";}i:2;i:2831;}i:49;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3000;}i:50;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3000;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:64:"The emails the two recipients will receive will looks like this:";}i:2;i:3002;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:3066;}i:53;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3067;}i:54;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:103:"Subject: Hey Fred, what's up?
--------------------------------
It's a bit muggy today wouldn't you say?";}i:2;i:3067;}i:55;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:103:"Subject: Hey Joe, what's up?
--------------------------------
It's a bit chilly today wouldn't you say?";}i:2;i:3178;}i:56;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3289;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"More than likely, if you";}i:2;i:3291;}i:58;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:3315;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"re thinking of using this plugin it";}i:2;i:3316;}i:60;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:3351;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"s becuase you have a more complicated requirement than this basic example so let";}i:2;i:3352;}i:62;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:3432;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"s continue.";}i:2;i:3433;}i:64;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3444;}i:65;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3444;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:59:"If you attach parts, Swift will replace variables here too:";}i:2;i:3446;}i:67;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3505;}i:68;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:195:"
$message->attach(new Swift_Message_Part("Order number: {order} sent on {date}"));
$message->attach(new Swift_Message_Part("<strong>Order number:</strong> {order} sent on {date}", "text/html"));
";i:1;s:3:"php";}i:2;i:3512;}i:69;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3719;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:"And even tricky things like file attachments can have unique names:";}i:2;i:3721;}i:71;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3788;}i:72;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:136:"
$message->attach(new Swift_Message_Attachment(
    new Swift_File("generic_plan.pdf"), "{name}s_action_plan.pdf", "application/pdf"));
";i:1;s:3:"php";}i:2;i:3795;}i:73;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3943;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:177:"If you choose to use some other syntax for your variables this will work just fine because the plugin requires that you provide the full identifier of the variable anyway (i.e. ";}i:2;i:3945;}i:75;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:4122;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"{foo}";}i:2;i:4123;}i:77;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4128;}i:78;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:" not just ";}i:2;i:4129;}i:79;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:4139;}i:80;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"foo";}i:2;i:4140;}i:81;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4143;}i:82;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:").  You may choose to use something like ";}i:2;i:4144;}i:83;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:4185;}i:84;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"%foo%";}i:2;i:4187;}i:85;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:4192;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:" or even ";}i:2;i:4194;}i:87;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:4203;}i:88;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"*&&^foo&*&";}i:2;i:4205;}i:89;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:4215;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:" if you";}i:2;i:4217;}i:91;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:4224;}i:92;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"re a bit nutty.";}i:2;i:4225;}i:93;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4240;}i:94;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4240;}i:95;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"In our first example, we";}i:2;i:4242;}i:96;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:4266;}i:97;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"d get the exact same result if we used ";}i:2;i:4267;}i:98;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:4306;}i:99;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"batchSend()";}i:2;i:4308;}i:100;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:4319;}i:101;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:148:" to send the email to Joe and Fred.  Whatever method you use to send the email to the recipients, providing they are the main recipient (i.e. not a ";}i:2;i:4321;}i:102;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:4469;}i:103;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"Cc";}i:2;i:4471;}i:104;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:4473;}i:105;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:" or ";}i:2;i:4475;}i:106;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:4479;}i:107;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"Bcc";}i:2;i:4481;}i:108;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:4484;}i:109;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:" recipient) this plugin will just work.";}i:2;i:4486;}i:110;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4525;}i:111;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:330:"
//Load the plugin with these replacements
$swift->attachPlugin(new Swift_Plugin_Decorator($replacements), "decorator");

$recipients =& new Swift_RecipientList();
$recipients->addTo("joe@bloggs.com");
$recipients->addTo("fred@perry.com");
//Send with batchSend()
$swift->batchSend($message, $recipients, "you@your-address.com");
";i:1;s:3:"php";}i:2;i:4532;}i:112;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4877;}i:113;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:1563;i:1;i:4876;i:2;i:2;i:3;s:16:"Using the plugin";}i:2;i:4877;}i:114;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:71:"Extending the replacement functionality (recommended for Database work)";i:1;i:2;i:2;i:4877;}i:2;i:4877;}i:115;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:4877;}i:116;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4960;}i:117;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:4961;}i:118;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:"Filling a huge array with the replacements for all the recipients you";}i:2;i:4962;}i:119;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:5031;}i:120;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:68:"re going to work with is probably not particularly appetising if you";}i:2;i:5032;}i:121;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:5100;}i:122;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:461:"re sending to 1000 recipients.  The plugin was deliberately designed to make it easy to extend so you can hook it right into your database or use whatever means you need to retreive the replacements for each recipient.  Providing you are able to get the replacments you need if you are given the email address to retreive them for then this is going to be the most ideal solution for you.  By default, the plugin takes your array and gives it to a class called ";}i:2;i:5101;}i:123;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:5562;}i:124;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"Swift_Plugin_Decorator_Replacements";}i:2;i:5564;}i:125;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:5599;}i:126;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:", it";}i:2;i:5601;}i:127;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:5605;}i:128;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"s this class you need to extend.";}i:2;i:5606;}i:129;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5638;}i:130;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5638;}i:131;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"The only method you";}i:2;i:5640;}i:132;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:5659;}i:133;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"ll want to override out of neccessity is ";}i:2;i:5660;}i:134;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:5701;}i:135;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"Swift_Plugin_Decroator_Replacements";}i:2;i:5703;}i:136;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"->";}i:2;i:5738;}i:137;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"getReplacementsFor()";}i:2;i:5740;}i:138;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:5760;}i:139;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:96:".  This method takes the address as an argument and returns the map of replacements as an array.";}i:2;i:5762;}i:140;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5858;}i:141;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:1223:"
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
        $query = sprintf("select
        name as `{name}`, weather as `{weather}`
        from buddies
        where email = '%s'", mysql_real_escape_string($address));
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
";i:1;s:3:"php";}i:2;i:5865;}i:142;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7100;}i:143;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:106:"This plugin really does give you a lot of flexibility when sending to a list, getting to know it is fun :)";}i:2;i:7102;}i:144;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7208;}i:145;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7208;}i:146;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"Enjoy!";}i:2;i:7210;}i:147;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:7216;}i:148;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7216;}i:149;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7216;}i:150;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:4877;i:1;i:0;i:2;i:2;i:3;s:71:"Extending the replacement functionality (recommended for Database work)";}i:2;i:7216;}i:151;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:7216;}}