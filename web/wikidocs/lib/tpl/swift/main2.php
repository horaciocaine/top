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
div#prv_header {
        height: 60px;
        background: #3e5ed4 url(/img/2blue_full.jpg) left repeat-x;
        color: #5555c0;
        font-size: 0.9em;
}

img#prv_header_right {
        float: right;
        margin: 0;
        padding: 0;
}

div#prv_nav_holder {
        height: 60px;
        float: right;
}

div#prv_nav_holder a {
        font-weight: bold;
        text-decoration: none;
        color: #5555c0;
}

div#prv_nav_holder a:hover {
        font-weight: bold;
        text-decoration: none;
        color: #333333;
}

div.prv_nav_button {
        height: 20px;
        padding: 0 3px;
        padding-left: 7px;
        float: left;
        margin-left: 3px;
        font-weight: bold;
        text-align: center;
        background: transparent url(/img/2greytab_full.gif) left no-repeat;
}

img.prv_tab_right {
        float: left;
        margin: 0;
        padding: 0;
}
  </style>
</head>

<body>

<div id="prv_header">
        <a style="float: left;" href="http://www.swiftmailer.org/"><img src="/img/swift_logo2.gif" alt="Swift Logo!" /></a>
        <img id="prv_header_right" src="/img/2blue_right.jpg" alt="" />
        <div id="prv_nav_holder">
                <div style="height: 40px;">
                        &nbsp;
                </div>
                <div style="height: 20px;">
                        <div class="prv_nav_button">
                                <a href="/">Home</a>
                        </div>
                        <img class="prv_tab_right" src="/img/2greytab_right.gif" alt="" />

                        <div class="prv_nav_button">
                                <a href="/wikidocs/">Documentation</a>
                        </div>
                        <img class="prv_tab_right" src="/img/2greytab_right.gif" alt="" />

                        <div class="prv_nav_button">
                                <a href="/download/">Download</a>
                        </div>
                        <img class="prv_tab_right" src="/img/2greytab_right.gif" alt="" />

                        <div class="prv_nav_button">
                                <a href="/source/">Source</a>
                        </div>
                        <img class="prv_tab_right" src="/img/2greytab_right.gif" alt="" />

                        <div class="prv_nav_button">
                                <a href="/contact/">Contact</a>
                        </div>
                        <img class="prv_tab_right" src="/img/2greytab_right.gif" alt="" />

                </div>
        </div>
</div>

<?php /*old includehook*/ @include(dirname(__FILE__).'/topheader.html')?>

<div class="dokuwiki">
  <?php html_msgarea()?>

  <div class="stylehead">

    <div class="header">
      <div class="pagename">
        [[<?php tpl_link(wl($ID,'do=backlink'),tpl_pagetitle($ID,true))?>]]
      </div>
      <div class="logo">
        <?php tpl_link(wl(),$conf['title'],'name="dokuwiki__top" id="dokuwiki__top" accesskey="h" title="[ALT+H]"')?>
      </div>

      <div class="clearer"></div>
    </div>

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
</body>
</html>
