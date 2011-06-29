a:26:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:35:"Sending a batch email or newsletter";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:50;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:226:"
We you send out an email marketing campaign, newsletter or any other type of batch email you don't particularly want to reveal everybody's address to the recipients.  One nasty hack is to Bcc all the recipients and leave the ";}i:2;i:51;}i:8;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:277;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"To:";}i:2;i:279;}i:10;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:282;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:108:" field undisclosed.  However, Swift provides a method specially for the purpose of sending out batch emails.";}i:2;i:284;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:392;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:392;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:122:"batchSend() has exactly the same semantics as send(), except it will ignore any Cc or Bcc recipients and just send to the ";}i:2;i:394;}i:15;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:516;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"To:";}i:2;i:518;}i:17;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:521;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:185:" addresses.  When it does this, it adjusts the headers of the email for each recipient so that they only see their own address and hence, it looks a lot more authentic and professional.";}i:2;i:523;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:708;}i:20;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:394:"
$swift =& new Swift(new Swift_Connection_SMTP("host.tld"));

$message =& new Swift_Message("Our newsletter", "Some news");

$recipients =& new Swift_RecipientList();
$recipients->addTo("recipient1@address.tld", "Recipient 1");
$recipients->addTo("recipient2@address.tld", "Another recipient");

$swift->batchSend($message, $recipients, new Swift_Address("company@domain.tld", "Our Company"));
";i:1;s:3:"php";}i:2;i:715;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1121;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:172:"This does use a little more bandwidth and take a little longer since Swift needs to send a slightly different message to each recipient.  However, it is still pretty fast!
";}i:2;i:1123;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1294;}i:24;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1294;}i:25;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1294;}}