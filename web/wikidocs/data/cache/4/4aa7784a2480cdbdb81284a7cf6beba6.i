a:118:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:25:"Manipulating MIME Headers";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:42;}i:7;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:1;i:1;i:41;i:2;i:1;i:3;s:25:"Manipulating MIME Headers";}i:2;i:42;}i:8;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:27:"Setting and getting headers";i:1;i:2;i:2;i:42;}i:2;i:42;}i:9;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:42;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:81;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:"
Each component of a message contains a ";}i:2;i:82;}i:12;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:122;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"headers";}i:2;i:124;}i:14;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:131;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:145:" property which is an instance of Swift_Message_Headers.  Such components include Swift_Message, Swift_Message_Part and Swift_Message_Attachment.";}i:2;i:133;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:278;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:278;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:169:"The headers contain vital information about the structure of that component.  Each component will have a different set of headers depending upon what the component does.";}i:2;i:280;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:449;}i:20;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:449;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"You can manipulate these headers by working with the ";}i:2;i:451;}i:22;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:504;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"headers";}i:2;i:506;}i:24;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:513;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:131:" property of the component.  For example, in Swift_Message we can change the subject using the setSubject() method for convenience:";}i:2;i:515;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:646;}i:27;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:70:"
$message =& new Swift_Message();
$message->setSubject("My subject");
";i:1;s:3:"php";}i:2;i:653;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:735;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:113:"However, that method is doing nothing more than working with the email headers so you could equivalently do this:";}i:2;i:737;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:850;}i:31;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:83:"
$message =& new Swift_Message();
$message->headers->set("Subject", "My subject");
";i:1;s:3:"php";}i:2;i:857;}i:32;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:952;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:185:"You can make a header appear not to exist by setting it to NULL.  If you want it to truly not exist then you can remove it completely using remove(), although this is rarely neccessary.";}i:2;i:954;}i:34;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1139;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1139;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:148:"It's possible for an email header to be a collection of values separated by commas.  For example, when several email addresses are being set in the ";}i:2;i:1141;}i:37;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1289;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"To:";}i:2;i:1291;}i:39;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1294;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:" header.  You use an array to acheive this:";}i:2;i:1296;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1339;}i:42;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:138:"
$message =& new Swift_Message();
$message->headers->set("To", array("foo@bar.tld", "zip@button.tld"));
//To: foo@bar.tld, zip@button.tld
";i:1;s:3:"php";}i:2;i:1346;}i:43;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1496;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:96:"Equally, you can retreive the value of a particular header by calling the headers' get() method.";}i:2;i:1498;}i:45;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1594;}i:46;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:306:"
$message =& new Swift_Message();
$message->headers->set("To", array("foo@bar.tld", "zip@button.tld"));
$message->headers->set("Subject" , "FooBar");

print_r($message->headers->get("To"));
//Array (
//   [0] => foo@bar.tld,
//   [1] => zip@button.tld
//)

echo $message->headers->get("Subject");
//FooBar
";i:1;s:3:"php";}i:2;i:1601;}i:47;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1921;}i:48;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:42;i:1;i:1920;i:2;i:2;i:3;s:27:"Setting and getting headers";}i:2;i:1921;}i:49;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:17:"Header attributes";i:1;i:2;i:2;i:1921;}i:2;i:1921;}i:50;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1921;}i:51;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1950;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:"
Headers may have attributes attached to them.  Take for example a ";}i:2;i:1951;}i:53;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:2018;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"Content-Type:";}i:2;i:2020;}i:55;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:2033;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:" header.  It may look something like this:
";}i:2;i:2035;}i:57;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2078;}i:58;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:54:"Content-Type: text/plain; charset=utf-8; format=flowed";}i:2;i:2078;}i:59;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2078;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"
In the above, ";}i:2;i:2136;}i:61;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2151;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"text/plain";}i:2;i:2152;}i:63;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2162;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:" is the value of the header";}i:2;i:2163;}i:65;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:2190;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:2193;}i:67;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2194;}i:68;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"charset=utf-8";}i:2;i:2195;}i:69;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2208;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:" and ";}i:2;i:2209;}i:71;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2214;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"format=flowed";}i:2;i:2215;}i:73;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2228;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:82:" are attributes.  To set attributes in a header you use the setAttribute() method.";}i:2;i:2229;}i:75;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2311;}i:76;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:221:"
$message =& new Swift_Message();
$message->headers->set("Foo", "bar");
$message->headers->setAttribute("Foo", "zip", "button");
$message->headers->setAttribute("Foo", "animal", "cat");
//Foo: bar; zip=button; animal=cat
";i:1;s:3:"php";}i:2;i:2318;}i:77;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2551;}i:78;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:213:"Because setAttribute relies upon the header being set first, it will throw an exception of you try to set an attribute against a header which doesn't exist.  Again, you should use the has() method to prevent this.";}i:2;i:2553;}i:79;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2766;}i:80;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2768;}i:81;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:1921;i:1;i:2767;i:2;i:2;i:3;s:17:"Header attributes";}i:2;i:2768;}i:82;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:49:"Swift thinks about encoding so you don't have to!";i:1;i:2;i:2;i:2768;}i:2;i:2768;}i:83;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2768;}i:84;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2829;}i:85;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:383:"
Headers can only contain 7-bit ascii characters and must not be more than 76 characters per-line.  Don't worry, you needn't even think about this since Swift will encode the headers to ensure this behaviour is observed.  If you pass a UTF-8 string as a header or an attribute it will be encoded accordingly.  Equally, long lines and long attributes will be encoded in a special way.";}i:2;i:2830;}i:86;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3213;}i:87;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3213;}i:88;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"If you wish to get the ";}i:2;i:3215;}i:89;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:3238;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"encoded";}i:2;i:3239;}i:91;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:3246;}i:92;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:74:" form of the headers you have set you should call the getEncoded() method.";}i:2;i:3247;}i:93;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3321;}i:94;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:304:"
//yes, this applies to attachments and MIME parts too!
$attachment =& new Swift_Message_Attachment();
$attachment->headers->set("Foo", "bar");
$attachment->headers->setAttribute("Foo", "zip", "some\nstring");

echo $attachment->headers->getEncoded("Foo");
//bar; zip*="'en-us'iso-8859-1'some%0Astring'"
";i:1;s:3:"php";}i:2;i:3328;}i:95;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3646;}i:96;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:2768;i:1;i:3645;i:2;i:2;i:3;s:49:"Swift thinks about encoding so you don't have to!";}i:2;i:3646;}i:97;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:22:"International settings";i:1;i:2;i:2;i:3646;}i:2;i:3646;}i:98;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:3646;}i:99;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3680;}i:100;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:133:"
If your email is not in English, and you have non-english phrases in the headers, you may want to specify the language you're using.";}i:2;i:3681;}i:101;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3814;}i:102;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:72:"
$message =& new Swift_Message();
$message->headers->setLanguage("de");
";i:1;s:3:"php";}i:2;i:3821;}i:103;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3905;}i:104;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"Equally, if your headers are not in UTF-8 or ";}i:2;i:3907;}i:105;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"ISO";}i:2;i:3952;}i:106;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:"-8859-1 character format, you will need to specify the character set using setCharset():";}i:2;i:3955;}i:107;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4043;}i:108;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:80:"
$message =& new Swift_Message();
$message->headers->setCharset("windows-874");
";i:1;s:3:"php";}i:2;i:4050;}i:109;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4142;}i:110;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:103:"Finally, if you want to dump the entire set of headers, you call their build() method like you do with ";}i:2;i:4144;}i:111;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"MIME";}i:2;i:4247;}i:112;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:" parts:";}i:2;i:4251;}i:113;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4258;}i:114;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:75:"
$message =& new Swift_Message_Headers();
echo $message->headers->build();
";i:1;s:3:"php";}i:2;i:4265;}i:115;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4352;}i:116;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:3646;i:1;i:0;i:2;i:2;i:3;s:22:"International settings";}i:2;i:4352;}i:117;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4352;}}