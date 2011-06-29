a:17:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"Just for Kicks!";i:1;i:2;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:28;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:29;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:180:"Swift Mailer Version 4 is very streamlined and aims to make typing the code as pain-free as possible.  One statement is less painful to write than 5 statements right?  I really don";}i:2;i:30;}i:9;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:210;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:84:"t expect anybody to do this, but just to show off how streamlined Swift can be, here";}i:2;i:211;}i:11;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:295;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:64:"s sending a message with an attachment using a single statement.";}i:2;i:296;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:360;}i:14;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:250:"
<?php

Swift_Mailer::newInstance(new Swift_MailTransport())->send(
  Swift_Message::newInstance('My subject', 'Some message')
    ->attach(Swift_Attachment::fromPath('foo.pdf'))
    ->setFrom('your@address.tld')
    ->setTo('person@address.tld')
);
";i:1;s:3:"php";}i:2;i:367;}i:15;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:630;}i:16;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:630;}}