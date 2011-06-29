a:127:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:29:"Multi-Part Messages in Detail";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:46;}i:7;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:1;i:1;i:45;i:2;i:1;i:3;s:29:"Multi-Part Messages in Detail";}i:2;i:46;}i:8;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:32:"A potentially confusing preamble";i:1;i:2;i:2;i:46;}i:2;i:46;}i:9;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:46;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:90;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"
Hopefully, I won't confuse people here";}i:2;i:91;}i:12;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:130;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:84:" if I do, just ignore this entire rambling and go straight to the bottom of the page";}i:2;i:133;}i:14;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:217;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:" It's not important, it's just useful to think about.";}i:2;i:220;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:273;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:273;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"If we imagine representing an email as ";}i:2;i:275;}i:19;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"XML";}i:2;i:314;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:" we'd have a document which looks something like this:";}i:2;i:317;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:371;}i:22;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:213:"
<email>
    <headers>
        <header name="Content-Type" value="text/plain" />
        <header name="Subject" value="My subject" />
    </headers>
    <body>
        This is my message body
    </body>
</email>
";i:1;s:3:"xml";}i:2;i:378;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:603;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:121:"We have the email, a block of headers (in which there are many individual headers) and a body containing the bit you see.";}i:2;i:605;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:726;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:726;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:62:"Now, following the same concept, we can replace what's in the ";}i:2;i:728;}i:28;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:790;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"<body>";}i:2;i:792;}i:30;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:798;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:79:" with another document, which will be parsed and displayed like a normal email.";}i:2;i:800;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:879;}i:33;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:403:"
<email>
    <headers>
        <header name="Content-Type" value="multipart" />
        <header name="Subject" value="My subject" />
    </headers>
    <body>
        <part>
            <headers>
                <header name="Content-Type" value="text/plain" />
            </headers>
            <body>
                This is a plain text body
            </body>
        </part>
    </body>
</email>
";i:1;s:3:"xml";}i:2;i:886;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1301;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"Notice that ";}i:2;i:1303;}i:36;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1315;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"<part>";}i:2;i:1317;}i:38;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1323;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:" is structured in just the same way as ";}i:2;i:1325;}i:40;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1364;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"<email>";}i:2;i:1366;}i:42;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1373;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:" ?  I mean, it's got ";}i:2;i:1375;}i:44;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1396;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"<headers>";}i:2;i:1398;}i:46;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1407;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:" and ";}i:2;i:1409;}i:48;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1414;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"<body>";}i:2;i:1416;}i:50;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1422;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:1424;}i:52;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1425;}i:53;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1425;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"We could place several different ";}i:2;i:1427;}i:55;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1460;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"<part>";}i:2;i:1462;}i:57;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1468;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:107:"s in the document and the mail client would not display them all, it would choose the most appropriate one.";}i:2;i:1470;}i:59;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1577;}i:60;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:636:"
<email>
    <headers>
        <header name="Content-Type" value="multipart" />
        <header name="Subject" value="My subject" />
    </headers>
    <body>
        <part>
            <headers>
                <header name="Content-Type" value="text/plain" />
            </headers>
            <body>
                This is a plain text body
            </body>
        </part>
        <part>
            <headers>
                <header name="Content-Type" value="text/html" />
            </headers>
            <body>
                This is a <strong>HTML</strong> body
            </body>
        </part>
    </body>
</email>
";i:1;s:3:"xml";}i:2;i:1584;}i:61;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2234;}i:62;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:46;i:1;i:2233;i:2;i:2;i:3;s:32:"A potentially confusing preamble";}i:2;i:2234;}i:63;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:30:"Multipart and MIME in practice";i:1;i:2;i:2;i:2234;}i:2;i:2234;}i:64;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2234;}i:65;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2276;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"
Now let's jump back to the real world of email :)";}i:2;i:2277;}i:67;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2327;}i:68;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2327;}i:69;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"Apart from the ";}i:2;i:2329;}i:70;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"XML";}i:2;i:2344;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:46:" representation above, this is in actual fact ";}i:2;i:2347;}i:72;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:2393;}i:73;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"exactly";}i:2;i:2395;}i:74;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:2402;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:" how multipart emails are formed.  Each ";}i:2;i:2404;}i:76;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"MIME";}i:2;i:2444;}i:77;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:182:" part is like a minature email in itself.  It has a set of headers, but those headers contain only structural information (no Subject or recipient details etc).  Because we can nest ";}i:2;i:2448;}i:78;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"MIME";}i:2;i:2630;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:" parts inside the body of an email, why could we not nest ";}i:2;i:2634;}i:80;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"MIME";}i:2;i:2692;}i:81;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" parts inside the body of another ";}i:2;i:2696;}i:82;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"MIME";}i:2;i:2730;}i:83;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:286:" part?  We can!  And in fact this is done in certain scenarios such as when embedded images are used.  It does get quite complicated once you start embeeding images, sending multiple parts and sending attachments all in the same email so luckily Swift does all the hard work for you! :)";}i:2;i:2734;}i:84;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3020;}i:85;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3020;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:111:"It's dead simple, forget the Swift class and the connections for a moment and just think about the email itself";}i:2;i:3022;}i:87;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3133;}i:88;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:124:" All you need to do is work with the Swift_Message class and it's attach() method.  Use the Swift_Message_Part class to add ";}i:2;i:3136;}i:89;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"MIME";}i:2;i:3260;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:206:" parts.  Swift_Message_Attachment, Swift_Message_EmbeddedFile and Swift_Message_Image are all classes which can be passed into attach().  attach() then works out where the part belongs in the overall email.";}i:2;i:3264;}i:91;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3470;}i:92;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:254:"
$message =& new Swift_Message("My subject");
$message->attach(new Swift_Message_Part("My plain part"));
$message->attach(new Swift_Message_Part("My HTML part", "text/html"));
$message->attach(new Swift_Message_Attachment(file_get_contents("foo.pdf")));
";i:1;s:3:"php";}i:2;i:3477;}i:93;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3743;}i:94;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"Easy! Right?";}i:2;i:3745;}i:95;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3757;}i:96;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3757;}i:97;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:164:"Anything which extends Swift_Message_Mime (Swift_Message, Swift_Message_Part, Swift_Message_Attachment, Swift_Message_EmbeddedFile, Swift_Message_Image) contains a ";}i:2;i:3759;}i:98;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:3923;}i:99;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"headers";}i:2;i:3925;}i:100;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:3932;}i:101;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:" property.  This is an instance of ";}i:2;i:3934;}i:102;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:24:"v3:Swift_Message_Headers";i:1;s:21:"Swift_Message_Headers";}i:2;i:3969;}i:103;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:" and allows you to manipulate the internal headers of all ";}i:2;i:4019;}i:104;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"MIME";}i:2;i:4077;}i:105;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:" parts, attachments and the email itself of course.";}i:2;i:4081;}i:106;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4132;}i:107;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4132;}i:108;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:317:"Each part contains an internal caching mechanism so that once Swift has asked the message to render itself it does not need to re-render itself (unless changes have been made subsequently) when asked again.  This mechanism is quite intelligent and will only re-render the smallest unit of the email which it needs to.";}i:2;i:4134;}i:109;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4451;}i:110;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4451;}i:111;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:138:"If you want to dump the rendered version of the email after adding all its parts and attachments etc, you simply call it's build() method ";}i:2;i:4453;}i:112;a:3:{i:0;s:12:"deleted_open";i:1;a:0:{}i:2;i:4591;}i:113;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:77:"which returns a string containing the message source as it will be sent over ";}i:2;i:4596;}i:114;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:4673;}i:115;a:3:{i:0;s:13:"deleted_close";i:1;a:0:{}i:2;i:4677;}i:116;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:143:" which returns an instance of Swift_Cache_OutputStream (a memory saving technique).  You can then use readFull() to display it in your browser.";}i:2;i:4683;}i:117;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4826;}i:118;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:338:"
$message =& new Swift_Message("My subject");
$message->attach(new Swift_Message_Part("My plain part"));
$message->attach(new Swift_Message_Part("My HTML part", "text/html"));
$message->attach(new Swift_Message_Attachment(file_get_contents("foo.pdf")));

$stream =& $message->build();
echo $stream->readFull(); //Dumps the email contents
";i:1;s:3:"php";}i:2;i:4833;}i:119;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5183;}i:120;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"You should refer to the complete ";}i:2;i:5185;}i:121;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"API";}i:2;i:5218;}i:122;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:87:" in the docs folder of your Swift installation for all the methods available to you.  
";}i:2;i:5221;}i:123;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5307;}i:124;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5307;}i:125;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:2234;i:1;i:0;i:2;i:2;i:3;s:30:"Multipart and MIME in practice";}i:2;i:5307;}i:126;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:5307;}}