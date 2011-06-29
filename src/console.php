<?php

use Symfony\Component\Console\Application;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputArgument;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Output\OutputInterface;

$console = new Application('Swiftmailer', 'n/a');
$console
    ->register('release')
    ->setDefinition(array(
        new InputArgument('version', InputArgument::REQUIRED, 'The release version'),
        new InputOption('unstable', '', InputOption::VALUE_NONE, 'Unstable version'),
    ))
    ->setDescription('Releases a new version of Swiftmailer')
    ->setCode(function (InputInterface $input, OutputInterface $output) use ($app) {
        

        $download = new Download();
        $download->filename = 'Swift-'.$input->getArgument('version').'.tar.gz';
        $download->time_created = time();
        $download->revoked = 0;
        $download->stable = !$input->getOption('unstable');
        $download->computeVersionNumber();

        $app['download_manager']->add($download);
    })
;

return $console;
