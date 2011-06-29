a:21:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:29:"Changing the message priority";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:44;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:441:"
The message priority does little more than flag the message in the recipients INBOX as being important or not.  To set the priority, you make a change to the message itself.  You can provide an integer ranging from 1 (High) to 5 (Low) to indicate the priority.  By default, no priority is indicated which equates to a priority of 3 (Normal).  The class constants used in the example below map to the relevant integer values of the priority.";}i:2;i:45;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:486;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:486;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:"PRIORITY_HIGH = 1
PRIORITY_NORMAL = 3
PRIORITY_LOW = 5";}i:2;i:488;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:542;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:542;}i:13;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:544;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"NOTE:";}i:2;i:546;}i:15;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:551;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:179:" PHP4 does not support class constants so instead there are some global constants provided: SWIFT_MESSAGE_PRIORITY_LOW, SWIFT_MESSAGE_PRIORITY_NORMAL, SWIFT_MESSAGE_PRIORITY_HIGH.";}i:2;i:553;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:732;}i:18;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:227:"
$message =& new Swift_Message("My subject", "My body");
$message->setPriority(2);

//Or use the class constants
$message->setPriority(Swift_Message::PRIORITY_HIGH);

//or
$message->setPriority(Swift_Message::PRIORITY_NORMAL);
";i:1;s:3:"php";}i:2;i:739;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:978;}i:20;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:978;}}