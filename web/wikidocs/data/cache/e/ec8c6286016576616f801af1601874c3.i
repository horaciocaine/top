a:82:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"SMTP Authentication";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:34;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"
The ";}i:2;i:35;}i:8;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:40;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:" connection in Swift provides a mechanism to use ";}i:2;i:44;}i:10;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:93;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:118:" authentication against a remote server.  You use the setUsername() and setPassword() methods of the Swift_Connection_";}i:2;i:97;}i:12;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:215;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:" class to acheive this:";}i:2;i:219;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:242;}i:15;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:108:"
$smtp =& new Swift_Connection_SMTP("smtp.host.tld");
$smtp->setUsername("foo");
$smtp->setPassword("bar");
";i:1;s:3:"php";}i:2;i:249;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:369;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"In order for the ";}i:2;i:371;}i:18;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:388;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:" connection to perform authentication, some ";}i:2;i:392;}i:20;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:436;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"Authenticator";}i:2;i:437;}i:22;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:450;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:124:" classes are used.  These are individual units of code which know how to perform some common authentication procedures over ";}i:2;i:451;}i:24;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:575;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:".  The procedures are ";}i:2;i:579;}i:26;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:601;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"LOGIN";}i:2;i:602;}i:28;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:607;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:", ";}i:2;i:608;}i:30;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:610;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"PLAIN";}i:2;i:611;}i:32;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:616;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:" and ";}i:2;i:617;}i:34;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:622;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"CRAM-MD5";}i:2;i:623;}i:36;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:631;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:64:".  These should be enough for almost anybody to get going.  The ";}i:2;i:632;}i:38;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:696;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:226:" connection will choose the correct one to use.  If you'd like to provide a specific mechanism and prevent Swift from using any of the others you can load it yourself using the attachAuthenticator() method in Swift_Connection_";}i:2;i:700;}i:40;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:926;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:930;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:931;}i:43;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:272:"
require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";
require_once "lib/Swift/Authenticator/LOGIN.php";

$conn =& new Swift_Connection_SMTP("smtp.host.tld");
$conn->attachAuthenticator(new Swift_Authenticator_LOGIN());

$swift =& new Swift($conn);

";i:1;s:3:"php";}i:2;i:938;}i:44;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1222;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:123:"However, if you need a different type of authentication mechanism, and you know how it works, you can write your own using ";}i:2;i:1224;}i:46;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:1347;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:" commands.";}i:2;i:1351;}i:48;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1361;}i:49;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1361;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:108:"The authenticator must conform to the following interface, which can be found in the Authenticator.php file:";}i:2;i:1363;}i:51;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1471;}i:52;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:652:"
/**
 * Swift Authenticator Interface
 * Lists the methods all authenticators must implement
 * @package Swift_Authenticator
 * @author Chris Corbyn <chris@w3style.co.uk>
 */
interface Swift_Authenticator
{
	/**
	 * Try to authenticate using the username and password
	 * Returns false on failure
	 * @param string The username
	 * @param string The password
	 * @param Swift The instance of Swift this authenticator is used in
	 * @return boolean
	 */
	public function isAuthenticated($username, $password, Swift $instance);
	/**
	 * Return the name of the AUTH extension this is for
	 * @return string
	 */
	public function getAuthExtensionName();
}
";i:1;s:3:"php";}i:2;i:1478;}i:53;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2142;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:128:"getAuthExtensionName() should return the case senSiTIVe string which corresponds to the name of the authentication mechanism in ";}i:2;i:2144;}i:55;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:2272;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:109:".  For example, for CRAM-MD5 authentication, your authenticator's getAuthExtensionName() method would return ";}i:2;i:2276;}i:57;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2385;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"CRAM-MD5";}i:2;i:2386;}i:59;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2394;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:2395;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2396;}i:62;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2396;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:196:"isAuthenticated() will contain any logic needed to perform the authentication.  The currect instance of Swift is provided so that you can call it's command() method when performing authentication.";}i:2;i:2398;}i:64;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2594;}i:65;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2596;}i:66;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:1;i:1;i:2595;i:2;i:1;i:3;s:19:"SMTP Authentication";}i:2;i:2596;}i:67;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:34:"How to get Pop Before SMTP Working";i:1;i:2;i:2;i:2596;}i:2;i:2596;}i:68;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2596;}i:69;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2642;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"
Swift does support Pop Before ";}i:2;i:2643;}i:71;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:2674;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:205:" as a method of authentication, however, I'll be the first to admit it's not the friendliest authenticator to get working in Swift.  Here's how you do it.  Basically, the complication arises from the fact ";}i:2;i:2678;}i:73;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:2883;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:" servers do not advertise the fact they offer Pop Before ";}i:2;i:2887;}i:75;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:2944;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:174:" authentication so Swift can't load the class in itself.  There's some oddness with the way I've named the class file here in order to prevent auto-loading, I do apologise ;)";}i:2;i:2948;}i:77;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3122;}i:78;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:555:"
<?php

require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";

//Apologies for the filename, it's to stop Swift auto-loading it
require_once 'lib/Swift/Authenticator/$PopB4Smtp$.php';

$smtp =& new Swift_Connection_SMTP("smtp.host.tld");

//Load the PopB4Smtp authenticator with the pop3 hostname
$smtp->attachAuthenticator(new Swift_Authenticator_PopB4Smtp("pop.host.tld"));

//Continue like normal
$smtp->setUsername("your_pop3_username");
$smtp->setPassword("your_pop3_password");

$swift =& new Swift($smtp);

//and continue....
";i:1;s:3:"php";}i:2;i:3129;}i:79;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3696;}i:80;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:2596;i:1;i:0;i:2;i:2;i:3;s:34:"How to get Pop Before SMTP Working";}i:2;i:3696;}i:81;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3696;}}