<?php

/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
abstract class BaseDownloadEvent extends Doctrine_Record
{
    public function setTableDefinition()
    {
        $this->setTableName('download_event');
        $this->hasColumn('id', 'integer', null, array('type' => 'integer', 'primary' => true, 'autoincrement' => true));
        $this->hasColumn('download_id', 'integer', null, array('type' => 'integer'));
        $this->hasColumn('time_created', 'timestamp', null, array('type' => 'timestamp'));
        $this->hasColumn('ip_address', 'string', 15, array('type' => 'string', 'length' => '15'));


        $this->index('time_index', array('fields' => array(0 => 'time_created')));
        $this->option('type', 'INNODB');
        $this->option('collate', 'utf8_general_ci');
        $this->option('charset', 'utf8');
    }

    public function setUp()
    {
        $this->hasOne('Download', array('local' => 'download_id',
                                        'foreign' => 'id'));
    }
}