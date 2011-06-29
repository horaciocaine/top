a:44:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:57:"I've got thousands of emails to send, how should I do it?";i:1;i:2;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:70;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:71;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:129:"99.9% of the time the best approach to doing this is to store all the emails and recipients in a database with a field marked as ";}i:2;i:72;}i:9;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:201;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"unsent";}i:2;i:202;}i:11;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:208;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:123:". A cron script can run every few minutes pulling out more modest batch sizes of around 100 emails, then flagging those as ";}i:2;i:209;}i:13;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:332;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"sent";}i:2;i:333;}i:15;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:337;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:338;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:339;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:339;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:89:"There are plugins such as AntiFlood and Throttler to aid in large batch sending but there";}i:2;i:341;}i:20;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:430;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:52:"s no substitute for running regular smaller batches.";}i:2;i:431;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:483;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:483;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:"I have also taken the approach of running a command line ";}i:2;i:485;}i:25;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"PHP";}i:2;i:542;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:135:" script in the background with a perpetual while() loop int it, sleeping for a few seconds at the end of each loop.  This mimmicks cron";}i:2;i:545;}i:27;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:680;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:156:"s behaviour except that new processes are not spawned since the script runs once only.  Each iteration of the loop can pull out 50-100 emails and send them.";}i:2;i:681;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:837;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:837;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:"If you really do have an extremely large number of emails to send you";}i:2;i:839;}i:32;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:908;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:"ll almost certainly have to pay for a ";}i:2;i:909;}i:34;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"SMTP";}i:2;i:947;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:" server, preferably several otherwise you";}i:2;i:951;}i:36;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:992;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"re effectively going to DoS somebody else";}i:2;i:993;}i:38;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:1034;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"s server ;)";}i:2;i:1035;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:1046;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1046;}i:42;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1046;}i:43;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1046;}}