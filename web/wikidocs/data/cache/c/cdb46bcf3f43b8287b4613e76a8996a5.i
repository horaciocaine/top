a:52:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:51:"PHP4 error handling - The alternative to exceptions";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:66;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:67;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:304:"In PHP5, Swift throws exceptions in places, which is fairly standard practise.  Exceptions of course, can be caught and dealt with.  PHP4 however, does not support exceptions (the use of the try/catch construct).  I could have triggered errors everywhere blindly and had you use set_error_handler() from ";}i:2;i:68;}i:9;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"PHP";}i:2;i:372;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:", but that";}i:2;i:375;}i:11;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:385;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:188:"s too intrusive and can easily conflict with other things happening in your application.  Instead, Swift dispatches error object, much like an exception from PHP5, to an error manager.  It";}i:2;i:386;}i:13;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:574;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:238:"s using this error manager that will allow you to catch errors before they are ever triggered.  If you tell the error manager you are expecting an error, it will not throw it, but will instead copy it to a reference for you.  If you haven";}i:2;i:575;}i:15;a:3:{i:0;s:18:"singlequoteclosing";i:1;a:0:{}i:2;i:813;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:87:"t specified that you are expecting an error, it will be triggered with trigger_error().";}i:2;i:814;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:901;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:901;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"When you look through the ";}i:2;i:903;}i:20;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"API";}i:2;i:929;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:157:" documentation you will see that some methods have a @throws declaration.  You will need to know the class type of the exception which is going to be thrown.";}i:2;i:932;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1089;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1089;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:161:"If a method (theMethod()) declares that it may throw an exception of type Swift_Connection_Exception for example, you could say that you expect it by doing this:";}i:2;i:1091;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1252;}i:26;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:78:"
Swift_Errors::expect($e, "Swift_Connection_Exception");
$swift->theMethod();
";i:1;s:3:"php";}i:2;i:1259;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1349;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:89:"If the exception was thrown, it will be assigned to $e, otherwise $e will be set to NULL.";}i:2;i:1351;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1440;}i:30;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:148:"
Swift_Errors::expect($e, "Swift_Connection_Exception");
$swift->theMethod();
if ($e !== null)
{
    echo "An error occurred" . $e->getMessage();
}
";i:1;s:3:"php";}i:2;i:1447;}i:31;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1607;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:265:"If the error was not thrown, the error handler will still think you are expecting an error, and as such, could catch that same type error later, when in actuality, you only expected it here, not later.  You must therefore clear the expectation if it was not caught.";}i:2;i:1609;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1874;}i:34;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:204:"
Swift_Errors::expect($e, "Swift_Connection_Exception");
$swift->theMethod();
if ($e !== null)
{
    echo "An error occurred" . $e->getMessage();
}
else Swift_Errors::clear("Swift_Connection_Exception");
";i:1;s:3:"php";}i:2;i:1881;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2097;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:112:"Without the expectation in place, if the error was thrown, nothing would catch it and Swift will then trigger a ";}i:2;i:2099;}i:37;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"PHP";}i:2;i:2211;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:314:" error of type E_USER_ERROR.  Most of the time, this does indicate something critical has happened, so you should only ever see this if things are not running correctly on your server.  Just be aware that there is a mechanism provided for performing a cheap try/catch-like operation with the PHP4 version of Swift.";}i:2;i:2214;}i:39;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2528;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2528;}i:41;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:2530;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"NOTE:";}i:2;i:2532;}i:43;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:2537;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:175:" Swift_Errors::expect() is aware of type.  Swift_Connection_Exception is a subclass of Swift_Exception, therefore, the following will still catch a Swift_Connection_Exception.";}i:2;i:2539;}i:45;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2714;}i:46;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:67:"
Swift_Errors::expect($e, "Swift_Exception");
$swift->theMethod();
";i:1;s:3:"php";}i:2;i:2721;}i:47;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2800;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"However, the reverse is not true.";}i:2;i:2802;}i:49;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2835;}i:50;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2836;}i:51;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2836;}}