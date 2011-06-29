a:19:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:3;a:3:{i:0;s:12:"section_edit";i:1;a:4:{i:0;i:-1;i:1;i:0;i:2;i:1;i:3;s:0:"";}i:2;i:1;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:34:"Working with plugins after loading";i:1;i:1;i:2;i:1;}i:2;i:1;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:49;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:329:"
Plugins are held inside Swift by-reference and you can get a reference to that plugin yourself by using the getPlugin() method.  When you load a plugin into Swift you need to give it a name.  You use that name to retreive a reference to it.  This comes in particularly useful when you want to run methods in a plugin at runtime.";}i:2;i:50;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:379;}i:9;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:195:"
$swift->attachPlugin(new Swift_Plugin_Example(), "Example");

//do some other stuff if you want
$swift->send( ... );

//Do something with the plugin
$swift->getPlugin("Example")->doSomething();
";i:1;s:3:"php";}i:2;i:386;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:593;}i:11;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:595;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"NOTE:";}i:2;i:597;}i:13;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:602;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:350:" In PHP4 you cannot call a method from an object returned from a function/method directly.  In this case you first need to assign the plugin instance to a variable.  It's critical that you use the reference operator here otherwise the return plugin instance will be a copy of the original and any changes you make to it will not be seen inside Swift.";}i:2;i:604;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:954;}i:16;a:3:{i:0;s:4:"code";i:1;a:2:{i:0;s:97:"
//Do something with the plugin
$plugin =& $swift->getPlugin("Example");
$plugin->doSomething();
";i:1;s:3:"php";}i:2;i:961;}i:17;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1071;}i:18;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1071;}}