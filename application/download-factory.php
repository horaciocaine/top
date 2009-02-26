<?php

/*
 Components that manage finding downloads at remote sources.
 */

$config = Zend_Registry::getInstance()->get('config');

$resolver = new Swift_Website_SimpleDownloadResolver(array(
  new Swift_Website_DownloadSources_SourceforgeDownloadSource(
    $config->get('sourceforge_project')
  ),
  new Swift_Website_DownloadSources_GoogleCodeDownloadSource(
    $config->get('google_project')
  ),
  new Swift_Website_DownloadSources_GithubDownloadSource(
    $config->get('github_account'), $config->get('github_project')
  )
));

$factory = new Swift_Website_SimpleDownloadFactory(
  $resolver,
  new Swift_Website_SimpleHttpClient()
);

Zend_Registry::getInstance()->set('download_resolver', $resolver);
Zend_Registry::getInstance()->set('download_factory', $factory);

unset($resolver, $factory);
