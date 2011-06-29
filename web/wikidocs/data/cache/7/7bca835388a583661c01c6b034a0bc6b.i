a:18:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"Working with Message-IDs";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:39;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:330:"
Emails can contain a unique ID known as a message ID.  As of Swift version 3.1.4, Swift will generate this ID for you on a per-send basis (i.e. when you send a message an ID is created for it).  If you want to get the message ID yourself then you should override what Swift does and call the generateId() method of Swift_Message:";}i:2;i:40;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:370;}i:9;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:199:"
$message = new Swift_Message( ... ); //as normal

foreach ($recipients as $address)
{
  $id = $message->generateId();
  echo $id; // something@domain.tld
  $swift->send($message, $address, $you);
}
";i:1;s:3:"php";}i:2;i:377;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:588;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:106:"generateId() accepts an optional string parameter which gets included in the overall message ID if passed.";}i:2;i:590;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:696;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:696;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:165:"Knowing the message ID before the message is sent comes in useful when you are sending to a mailing list where you will detect bounces/track message statuses later.
";}i:2;i:698;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:862;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:862;}i:17;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:862;}}