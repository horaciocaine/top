a:26:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:22:"Catching useful errors";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:39;}i:7;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:1;i:1;i:38;i:2;i:1;i:3;s:22:"Catching useful errors";}i:2;i:39;}i:8;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:30:"THIS PAGE APPLIES TO PHP5 ONLY";i:1;i:2;i:2;i:39;}i:2;i:39;}i:9;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:39;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:81;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:82;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:143:"Swift Mailer version 3 throws exceptions in PHP5.  These exceptions should ideally be caught so that you can recover from them if required.  It";}i:2;i:83;}i:13;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:226;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:84:"s not compulsory to catch exceptions but it is good practice and it does help.  The ";}i:2;i:227;}i:15;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"API";}i:2;i:311;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:" documentation packaged in the ";}i:2;i:314;}i:17;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:345;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"docs";}i:2;i:346;}i:19;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:350;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:226:" folder indicates where exceptions are thrown.  The only time this should happen in practise, is if your mail server is not configured correctly or is unavailable, or if you try doing something illegal with the message object.";}i:2;i:351;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:577;}i:22;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:653:"
<?php

//Load in the files we'll need
require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";

try {
  //Start Swift
  $swift = new Swift(new Swift_Connection_SMTP("smtp.your-host.tld"));

  //Create the message
  $message = new Swift_Message("My subject", "My body");

  //Now check if Swift actually sends it
  $swift->send($message, "foo@bar.tld", "me@mydomain.com");
  echo "Sent";
} catch (Swift_Connection_Exception $e) {
  echo "There was a problem communicating with SMTP: " . $e->getMessage();
} catch (Swift_Message_MimeException $e) {
  echo "There was an unexpected problem building the email:" . $e->getMessage();
}



";i:1;s:3:"php";}i:2;i:584;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1250;}i:24;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:39;i:1;i:0;i:2;i:2;i:3;s:30:"THIS PAGE APPLIES TO PHP5 ONLY";}i:2;i:1250;}i:25;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1250;}}