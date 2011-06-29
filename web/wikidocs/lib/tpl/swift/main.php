<?php
/**
 * DokuWiki Default Template
 *
 * This is the template you need to change for the overall look
 * of DokuWiki.
 *
 * You should leave the doctype at the very top - It should
 * always be the very first line of a document.
 *
 * @link   http://wiki.splitbrain.org/wiki:tpl:templates
 * @author Andreas Gohr <andi@splitbrain.org>
 */

// must be run from within DokuWiki
if (!defined('DOKU_INC')) die();

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $conf['lang']?>"
 lang="<?php echo $conf['lang']?>" dir="<?php echo $lang['direction']?>">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>
    <?php tpl_pagetitle()?>
    [<?php echo strip_tags($conf['title'])?>]
  </title>

  <?php tpl_metaheaders()?>

  <link rel="shortcut icon" href="<?php echo DOKU_TPL?>images/favicon.ico" />

  <?php /*old includehook*/ @include(dirname(__FILE__).'/meta.html')?>

  <style type="text/css">




/* Page header elements */

div#prv_header_outer {
  width: 100%;
  height: 60px;
  background-image: url(/images/2blue_full.jpg);
  background-position: left;
  background-repeat: no-repeat;
}

div#prv_header_inner {
  width: 100%;
  height: 60px;
  background-image: url(/images/2blue_right.jpg);
  background-position: right;
  background-repeat: no-repeat;
}

div#prv_header_container_right {
  width: 100%;
  height: 60px;
  float: right;
  margin-left: -230px;
}

div#prv_header_container_right_inner {
  height: 60px;
  margin-left: 230px;
}

div#prv_header_right_spacer {
  height: 40px;
}

div#prv_header_right_content {
  height: 20px;
  padding-right: 20px;
  text-align: right;
}

img#prv_logo {
  float: left;
}

div#prv_header_right_content ul {
  margin: 0;
  padding: 0;
  float: right;
  list-style: none;
}

div#prv_header_right_content li {
  display: inline;
  padding: 0;
  margin: 0;
}

div#prv_header_right_content li div.prv_nav_item {
  background-image: url(/images/2greytab_full.gif);
  background-position: left;
  height: 20px;
  padding: 0;
  margin: 0 2px;
  float: left;
  width: 1px;
}

div#prv_header_right_content li > div.prv_nav_item {
  width: auto;
}

div#prv_header_right_content li div.prv_nav_item div {
  background-image: url(/images/2greytab_right.gif);
  background-position: right;
  background-repeat: no-repeat;
  height: 20px;
  padding: 0 6px;
}

div#prv_header_right_content li div.prv_nav_item a {
  font-weight: bold;
  color: #333399;
  text-decoration: none;
  border-bottom: none;
}

div#prv_header_right_content li div.prv_nav_item a:hover {
  font-weight: bold;
  color: #775533;
  text-decoration: none;
  border-bottom: none;
}






  </style>
</head>

<body>

<!-- Hacked by chris to include header -->
<div style="padding: 20px;">
<div id="prv_header_outer">
  <!-- Header -->
  <div id="prv_header_inner">
	<div id="prv_header_container_right">
	  <div id="prv_header_container_right_inner">
	    <div id="prv_header_right_spacer">
		  &nbsp;
		</div>

		<div id="prv_header_right_content">
		  <ul>
		    		    <li><div class="prv_nav_item"><div><a href="/">Home</a></div></div></li>
		    		    <li><div class="prv_nav_item"><div><a href="/wikidocs/">Docs</a></div></div></li>
		    		    <li><div class="prv_nav_item"><div><a href="/download/">Download</a></div></div></li>
		    		    <li><div class="prv_nav_item"><div><a href="/gophp5/">Go PHP 5</a></div></div></li>
		    		    <li><div class="prv_nav_item"><div><a href="/source/">Source</a></div></div></li>
		    		    <li><div class="prv_nav_item"><div><a href="http://sourceforge.net/donate/index.php?group_id=170045">Donate</a></div></div></li>

		    		    <li><div class="prv_nav_item"><div><a href="http://forums.devnetwork.net/viewforum.php?f=52">Forum</a></div></div></li>
		    		    <li><div class="prv_nav_item"><div><a href="/contact/">Contact</a></div></div></li>
		            		  </ul>
		</div>
	  </div>
	</div>
	<a href="/"><img src="/images/swift_logo2.gif" alt="Swift Logo" id="logo" style="border: none;" /></a>  </div>

  <!-- End Header -->
</div>
<div>&nbsp;</div>
<!-- End hack by chris -->

<?php /*old includehook*/ @include(dirname(__FILE__).'/topheader.html')?>

<div class="dokuwiki">
  <?php html_msgarea()?>

  <div class="stylehead">

<!--    <div class="header">
      <div class="pagename">
        <?php tpl_link(wl($ID,'do=backlink'),tpl_pagetitle($ID,true))?>
      </div>
      <div class="logo">
        <?php tpl_link(wl(),$conf['title'],'name="dokuwiki__top" id="dokuwiki__top" accesskey="h" title="[ALT+H]"')?>
      </div>

      <div class="clearer"></div>
    </div> -->

    <?php /*old includehook*/ @include(dirname(__FILE__).'/header.html')?>

    <div class="bar" id="bar__top">
      <div class="bar-left" id="bar__topleft">
        <?php tpl_button('edit')?>
        <?php tpl_button('history')?>
      </div>

      <div class="bar-right" id="bar__topright">
        <?php tpl_button('recent')?>
        <?php tpl_searchform()?>&nbsp;
      </div>

      <div class="clearer"></div>
    </div>

    <?php if($conf['breadcrumbs']){?>
    <div class="breadcrumbs">
      <?php tpl_breadcrumbs()?>
      <?php //tpl_youarehere() //(some people prefer this)?>
    </div>
    <?php }?>

    <?php if($conf['youarehere']){?>
    <div class="breadcrumbs">
      <?php tpl_youarehere() ?>
    </div>
    <?php }?>

  </div>
  <?php flush()?>

  <?php /*old includehook*/ @include(dirname(__FILE__).'/pageheader.html')?>

  <div class="page">
    <!-- wikipage start -->
    <?php tpl_content()?>
    <!-- wikipage stop -->
  </div>

  <div class="clearer">&nbsp;</div>

  <?php flush()?>

  <div class="stylefoot">

    <div class="meta">
      <div class="user">
        <?php tpl_userinfo()?>
      </div>
      <div class="doc">
        <?php tpl_pageinfo()?>
      </div>
    </div>

   <?php /*old includehook*/ @include(dirname(__FILE__).'/pagefooter.html')?>

    <div class="bar" id="bar__bottom">
      <div class="bar-left" id="bar__bottomleft">
        <?php tpl_button('edit')?>
        <?php tpl_button('history')?>
      </div>
      <div class="bar-right" id="bar__bottomright">
        <?php tpl_button('subscription')?>
        <?php tpl_button('admin')?>
        <?php tpl_button('profile')?>
        <?php tpl_button('login')?>
        <?php tpl_button('index')?>
        <?php tpl_button('top')?>&nbsp;
      </div>
      <div class="clearer"></div>
    </div>

  </div>

</div>
<?php /*old includehook*/ @include(dirname(__FILE__).'/footer.html')?>

<div class="no"><?php /* provide DokuWiki housekeeping, required in all templates */ tpl_indexerWebBug()?></div>

</div> <!-- CLOSE TAG -->
</body>
</html>
