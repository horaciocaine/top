a:166:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:40:"Sending an e-mail from a form with Swift";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:55;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:131:"
Ok, so Swift isn't going to write the form and handle user input for you.  I'll assume you already know how to deal with forms in ";}i:2;i:56;}i:8;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"PHP";}i:2;i:187;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:52:".  If you don't, you might want to read here first: ";}i:2;i:190;}i:10;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:42:"http://www.w3schools.com/php/php_forms.asp";i:1;N;}i:2;i:242;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:72:".  The only thing Swift will do is create the email for you and send it.";}i:2;i:284;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:356;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:356;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:206:"The tutorial I'll take you through here will explain how to use Swift to create a contact form which allows an attachment to be sent to your address.  A bit like the contact form on the SwiftMailer website.";}i:2;i:358;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:564;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:564;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:145:"You'll need to write three files for this.  One for the form, one for processing the form, and a really simple page to display a success message.";}i:2;i:566;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:711;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:711;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:249:"We'll start by creating the form itself.  This form will need some work later on so that it can handle problems if the user enters something we don't want to handle, but in terms of sending data ready for Swift to use, the code below will be enough.";}i:2;i:713;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:962;}i:22;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:964;}i:23;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:1;i:1;i:963;i:2;i:1;i:3;s:40:"Sending an e-mail from a form with Swift";}i:2;i:964;}i:24;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"The basis of the form";i:1;i:2;i:2;i:964;}i:2;i:964;}i:25;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:964;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:997;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:188:"
All we want for this example is an email address to send the message from, the name of the sender, a title, a comment and (optionally) an attached file.  Remember that to send files over ";}i:2;i:998;}i:28;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:4:"HTTP";}i:2;i:1186;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:" you need to specify the ";}i:2;i:1190;}i:30;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1215;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"enctype";}i:2;i:1217;}i:32;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1224;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:" attribute of the form to be ";}i:2;i:1226;}i:34;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1255;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"multipart/form-data";}i:2;i:1256;}i:36;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1275;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:1276;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1277;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1277;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"I've called it ";}i:2;i:1279;}i:41;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1294;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"form.php";}i:2;i:1296;}i:43;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1304;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:1306;}i:45;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:1307;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:" not sure why ;)";}i:2;i:1309;}i:47;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1325;}i:48;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:948:"
<form action="handle_form.php" method="post" enctype="multipart/form-data">
    <table>
        <tr>
            <td class="label">Name</td>
            <td><input type="text" name="sender_name" value="" /></td>
        </tr>
        <tr>
            <td class="label">E-mail address</td>
            <td><input type="text" name="sender_email" value="" /></td>
        </tr>
        <tr>
            <td class="label">Title</td>
            <td><input type="text" name="comment_title" value="" /></td>
        </tr>
        <tr>
            <td class="label">Attachment (optional)</td>
            <td><input type="file" name="attachment" /></td>
        </tr>
        <tr>
            <td colspan="2">Comment<br />
                <textarea name="comment_body" rows="10" cols="30"></textarea></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" name="submit" value="Submit" /></td>
        </tr>
    </table>
</form>
";i:1;s:11:"html4strict";}i:2;i:1332;}i:49;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2293;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:137:"Nothing new here, it should be fairly self explanatory.  The form uses POST to send the information, and the information will be sent to ";}i:2;i:2295;}i:51;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:2432;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"handle_form.php";}i:2;i:2434;}i:53;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:2449;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:2451;}i:55;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2452;}i:56;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2454;}i:57;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:964;i:1;i:2453;i:2;i:2;i:3;s:21:"The basis of the form";}i:2;i:2454;}i:58;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"The form handler backend";i:1;i:2;i:2;i:2454;}i:2;i:2454;}i:59;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2454;}i:60;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2489;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:265:"
Now we'll start with the backend code in handle_form.php which will process the form data and send an email if it's all ok.  We sent the data using POST so the variables will come through in $_POST and the file information will come through in $_FILES.  We wanted ";}i:2;i:2490;}i:62;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2755;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"Name";}i:2;i:2757;}i:64;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2761;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:", ";}i:2;i:2763;}i:66;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2765;}i:67;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"E-mail";}i:2;i:2767;}i:68;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2773;}i:69;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:", ";}i:2;i:2775;}i:70;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2777;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"Title";}i:2;i:2779;}i:72;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2784;}i:73;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:", and ";}i:2;i:2786;}i:74;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2792;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"Comments";}i:2;i:2794;}i:76;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2802;}i:77;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:185:" to be required fields.  The attachment is optional.  First we check if everything was sent that was required, and if it's not, we redirect back to the form so the user can do it again ";}i:2;i:2804;}i:78;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:2989;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:" properly ;)";}i:2;i:2991;}i:80;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3003;}i:81;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:346:"
<?php

//Check if the required fields were sent
// Redirect back to the form if not
if (empty($_POST["sender_name"]) || empty($_POST["sender_email"])
    || empty($_POST["comment_title"]) || empty($_POST["comment_body"]))
{
    //redirect back to form
    header("Location: ./form.php"); //This should really be an absolute URL if you know it
}
";i:1;s:3:"php";}i:2;i:3010;}i:82;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3368;}i:83;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"If you're wondering where the ending tag for ";}i:2;i:3370;}i:84;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"PHP";}i:2;i:3415;}i:85;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:160:" is, there isn't one.  It's not needed and Zend actually say not to use it.  The reasons are beyond the scope of this tutorial; add the closing tag if you wish.";}i:2;i:3418;}i:86;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3578;}i:87;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3578;}i:88;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:360:"This form includes an email address.  It's usually a good idea to at the very lest confirm that the address looks like an email address.  We'll use a regular expression to do this here.  The one I'm using in this example is extremely basic purely to save confusing people.  If you search the web you'll find loads of better ones for validating email addresses.";}i:2;i:3580;}i:89;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3940;}i:90;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:387:"
//Copy into global variables
$name = $_POST["sender_name"];
$email = $_POST["sender_email"];
$title = $_POST["comment_title"];
$body = $_POST["comment_body"];

//Validate the email address using a regex (I suggest you use a better one than this!!)
if (!preg_match("/[a-zA-Z0-9_\\.-]+@[a-zA-Z0-9_\\.-]+/", $email))
{
    header("Location: ./form.php?error=invalid_email");
    exit();
}
";i:1;s:3:"php";}i:2;i:3947;}i:91;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4346;}i:92;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:198:"The last check we need to make in terms of what was uploaded to the handle_form.php file is if the attachment was sent, and if it was, did it fail?  The file attachment data is contained in $_FILES[";}i:2;i:4348;}i:93;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:4546;}i:94;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"attachment";}i:2;i:4547;}i:95;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4557;}i:96;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"]. ";}i:2;i:4558;}i:97;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:4561;}i:98;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"tmp_name";}i:2;i:4562;}i:99;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4570;}i:100;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:" is the location of the temporary file on the server.";}i:2;i:4571;}i:101;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4624;}i:102;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:470:"
//Check if an attachment was uploaded
$file_path = false;
$file_name = false;
$file_type = false;
if (!empty($_FILES["attachment"]["tmp_name"]))
{
    if ($_FILES["attachment"]["error"])
    {
        //Redirect if the upload has failed
        header("Location: ./form.php?error=upload_failed");
        exit();
    }
    $file_path = $_FILES["attachment"]["tmp_name"];
    $file_name = $_FILES["attachment"]["name"];
    $file_type = $_FILES["attachment"]["type"];
}
";i:1;s:3:"php";}i:2;i:4631;}i:103;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5113;}i:104;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:201:"If we have checked everything we've checked so far, then we're good to go with Swift.  You may read in other tutorials all this stuff about header injection and filtering.  Add such things if you want ";}i:2;i:5115;}i:105;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:5316;}i:106;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:130:" yes it is important, but Swift luckily does that for you.  The encoding it performs will safely prevent header injection attacks.";}i:2;i:5318;}i:107;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5448;}i:108;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5448;}i:109;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:215:"Because we may be dealing with attachments here, we'll make use of the /tmp directory on the server if it's there and it's writable.  Swift can filestream via disk if we tell it to.  Any writable folder can be used.";}i:2;i:5450;}i:110;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5665;}i:111;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:382:"
//Everything looks ok, we can start Swift

require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";

//Enable disk caching if we can
if (is_writable("/tmp"))
{
    Swift_CacheFactory::setClassName("Swift_Cache_Disk");
    Swift_Cache_Disk::setSavePath("/tmp");
}

//Create a Swift instance
$swift =& new Swift(new Swift_Connection_SMTP("your_smtp_server.tld"));
";i:1;s:3:"php";}i:2;i:5672;}i:112;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6066;}i:113;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:119:"Now we can start to build our message.  We know the sender is the person submitting the form so we can define this too.";}i:2;i:6068;}i:114;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6187;}i:115;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:236:"
//Create the sender from the details we've been given
$sender =& new Swift_Address($email, $name);

//Create the message to send
$message =& new Swift_Message("New comment: " . $title);
$message->attach(new Swift_Message_Part($body));
";i:1;s:3:"php";}i:2;i:6194;}i:116;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6442;}i:117;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:228:"Earlier, we ran some checks to see if an attachment was uploaded.  We created variables and set them to FALSE.  If the attachment was uploaded these variables will now contain values so we can attach the file here if we need to:";}i:2;i:6444;}i:118;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6672;}i:119;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:201:"
//If an attachment was sent, attach it
if ($file_path && $file_name && $file_type)
{
    $message->attach(
        new Swift_Message_Attachment(new Swift_File($file_path), $file_name, $file_type));
}
";i:1;s:3:"php";}i:2;i:6679;}i:120;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6892;}i:121;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:128:"All that's left to do now is send the email to your own address and either go to a success page, or back to the form if we fail.";}i:2;i:6894;}i:122;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7022;}i:123;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:288:"
//Try sending the email
$sent = $swift->send($message, "your@address.tld", $sender);
//Disconnect from SMTP, we're done
$swift->disconnect();

if ($sent)
{
    header("Location: ./success.php");
    exit();
}
else
{
    header("Location: ./form.php?error=sending_failed");
    exit();
}
";i:1;s:3:"php";}i:2;i:7029;}i:124;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7329;}i:125;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:62:"Your success page can be simple.  It doesn't have to actually ";}i:2;i:7331;}i:126;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:7393;}i:127;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"do";}i:2;i:7394;}i:128;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:7396;}i:129;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:77:" anything, it just displays a message saying something along of the lines of ";}i:2;i:7397;}i:130;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:7474;}i:131;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"Thanks for your comments.";}i:2;i:7475;}i:132;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:7500;}i:133;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:621:".  However, I noted earlier that our form page was just the basis upon which to build.  At this point we have a working, functional form-to-mail script, but what's it's lacking is user-friendliness.  If something goes wrong the user simply gets bounced back to the form again.  We'll change this to show them some error messages which explain why they've come back to the form.  If you have the time, you'll probably want to go further than I'm going here and actually store the form values in the session and pre-opulate the form upon returning to it.  For simplicity's sake however, we'll just display an error message.";}i:2;i:7501;}i:134;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8122;}i:135;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8122;}i:136;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:97:"Every time we redirected back to the form from handle_form.php we passed an argument through the ";}i:2;i:8124;}i:137;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"URL";}i:2;i:8221;}i:138;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:93:" which can be accessed via $_GET.  A simple switch() statment will suffice to display errors.";}i:2;i:8224;}i:139;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8317;}i:140;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:762:"
//Display an error if something went wrong
if (!empty($_GET["error"]))
{
    switch ($_GET["error"])
    {
        case "not_enough_info": ?>
            <strong style="color: red;">You need to complete all fields marked *<strong><?php
            break;
        case "invalid_email": ?>
            <strong style="color: red;">Please provide a valid email address</strong><?php
            break;
        case "upload_failed": ?>
            <strong style="color: red;">The file you uploaded failed to attach, this could be a temporary problem.
            Please try later.</strong><?php
            break;
        case "sending_failed": ?>
            <strong style="color: red;">Temporary problem, please try later.</strong><?php
            break;
    }
}
";i:1;s:3:"php";}i:2;i:8324;}i:141;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9098;}i:142;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:"So putting that all together we have ";}i:2;i:9100;}i:143;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:9137;}i:144;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"form.php";}i:2;i:9139;}i:145;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:9147;}i:146;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9149;}i:147;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:1729:"
<?php

//Display an error if something went wrong
if (!empty($_GET["error"]))
{
    switch ($_GET["error"])
    {
        case "not_enough_info": ?>
            <strong style="color: red;">You need to complete all fields marked *<strong><?php
            break;
        case "invalid_email": ?>
            <strong style="color: red;">Please provide a valid email address</strong><?php
            break;
        case "upload_failed": ?>
            <strong style="color: red;">The file you uploaded failed to attach, this could be a temporary problem.
            Please try later.</strong><?php
            break;
        case "sending_failed": ?>
            <strong style="color: red;">Temporary problem, please try later.</strong><?php
            break;
    }
}

?>

<form action="handle_form.php" method="post" enctype="multipart/form-data">
    <table>
        <tr>
            <td class="label">Name *</td>
            <td><input type="text" name="sender_name" value="" /></td>
        </tr>
        <tr>
            <td class="label">E-mail address *</td>
            <td><input type="text" name="sender_email" value="" /></td>
        </tr>
        <tr>
            <td class="label">Title *</td>
            <td><input type="text" name="comment_title" value="" /></td>
        </tr>
        <tr>
            <td class="label">Attachment (optional)</td>
            <td><input type="file" name="attachment" /></td>
        </tr>
        <tr>
            <td colspan="2">Comment *<br />
                <textarea name="comment_body" rows="10" cols="30"></textarea></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" name="submit" value="Submit" /></td>
        </tr>
    </table>
</form>
";i:1;s:3:"php";}i:2;i:9156;}i:148;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10897;}i:149;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"We have our backend script, ";}i:2;i:10899;}i:150;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:10927;}i:151;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"handle_form.php";}i:2;i:10929;}i:152;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:10944;}i:153;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:" utilising Swift.";}i:2;i:10946;}i:154;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10963;}i:155;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:2344:"
<?php

//Check if the required fields were sent
// Redirect back to the form if not
if (empty($_POST["sender_name"]) || empty($_POST["sender_email"])
    || empty($_POST["comment_title"]) || empty($_POST["comment_body"]))
{
    //redirect back to form
    header("Location: ./form.php?error=not_enough_info"); //This should really be an absolute URL if you know it
    exit();
}

//Copy into global variables
$name = $_POST["sender_name"];
$email = $_POST["sender_email"];
$title = $_POST["comment_title"];
$body = $_POST["comment_body"];

//Validate the email address using a regex (I suggest you use a better one than this!!)
if (!preg_match("/[a-zA-Z0-9_\\.-]+@[a-zA-Z0-9_\\.-]+/", $email))
{
    header("Location: ./form.php?error=invalid_email");
    exit();
}

//Check if an attachment was uploaded
$file_path = false;
$file_name = false;
$file_type = false;
if (!empty($_FILES["attachment"]["tmp_name"]))
{
    if ($_FILES["attachment"]["error"])
    {
        //Redirect if the upload has failed
        header("Location: ./form.php?error=upload_failed");
        exit();
    }
    $file_path = $_FILES["attachment"]["tmp_name"];
    $file_name = $_FILES["attachment"]["name"];
    $file_type = $_FILES["attachment"]["type"];
}

//Everything looks ok, we can start Swift

require_once "lib/Swift.php";
require_once "lib/Swift/Connection/SMTP.php";

//Enable disk caching if we can
if (is_writable("/tmp"))
{
    Swift_CacheFactory::setClassName("Swift_Cache_Disk");
    Swift_Cache_Disk::setSavePath("/tmp");
}

//Create a Swift instance
$swift =& new Swift(new Swift_Connection_SMTP("your_smtp_server.tld"));

//Create the sender from the details we've been given
$sender =& new Swift_Address($email, $name);

//Create the message to send
$message =& new Swift_Message("New comment: " . $title);
$message->attach(new Swift_Message_Part($body));

//If an attachment was sent, attach it
if ($file_path && $file_name && $file_type)
{
    $message->attach(
        new Swift_Message_Attachment(new Swift_File($file_path), $file_name, $file_type));
}

//Try sending the email
$sent = $swift->send($message, "your@address.tld", $sender);
//Disconnect from SMTP, we're done
$swift->disconnect();

if ($sent)
{
    header("Location: ./success.php");
    exit();
}
else
{
    header("Location: ./form.php?error=sending_failed");
    exit();
}
";i:1;s:3:"php";}i:2;i:10970;}i:156;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:13326;}i:157;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"And we have a success page (basic).";}i:2;i:13328;}i:158;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:13363;}i:159;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:69:"
<div>Thanks for you comments, your message sent successfully.</div>
";i:1;s:11:"html4strict";}i:2;i:13370;}i:160;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:13452;}i:161;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:61:"So there you have it!  Forms with attachments using Swift :)
";}i:2;i:13454;}i:162;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:13514;}i:163;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:13514;}i:164;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:2454;i:1;i:0;i:2;i:2;i:3;s:24:"The form handler backend";}i:2;i:13514;}i:165;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:13514;}}