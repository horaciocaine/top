<?php

class Download
{
    const STATUS_ALPHA = 1;
    const STATUS_BETA = 2;
    const STATUS_RC = 3;
    const STATUS_FINAL = 4;
    const VERSION_PATTERN = '~([0-9]+)(?:\.([0-9]+))?(?:\.([0-9]+))?(?:-(alpha|a|beta|b|rc)-?([0-9]+))?~i';

    public function computeVersionNumber()
    {
        // Major-Minor-Revsion-Alpha/Beta/RC-StatusVersion
        // i.e for 4.0.0-rc1
        //         004-000-000-3-001
        // Alpha = 1
        // Beta  = 2
        // RC    = 3
        // Final = 4

        $format = '%03d-%03d-%03d-%d-%03d';

        $major = 0;
        $minor = 0;
        $revision = 0;
        $status = self::STATUS_FINAL;
        $statusVersion = 0;

        if (preg_match(self::VERSION_PATTERN, $this->filename, $matches)) {
            if (!empty($matches[1])) {
                $major = (int) $matches[1];
            }

            if (!empty($matches[2])) {
                $minor = (int) $matches[2];
            }

            if (!empty($matches[3])) {
                $revision = (int) $matches[3];
            }

            if (!empty($matches[4])) {
                switch (strtolower($matches[4])) {
                    case 'a':
                    case 'alpha':
                        $status = self::STATUS_ALPHA;
                        break;

                    case 'b':
                    case 'beta':
                        $status = self::STATUS_BETA;
                        break;

                    case 'rc':
                        $status = self::STATUS_RC;
                        break;

                    case 'final':
                    default:
                        $status = self::STATUS_FINAL;
                        break;
                }
            }

            if (!empty($matches[5])) {
                $statusVersion = (int) $matches[5];
            }
        }

        $this->version_number = sprintf($format, $major, $minor, $revision, $status, $statusVersion);
    }
}

class DownloadManager
{
    protected $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function add(Download $download)
    {
        $this->db->insert('download', (array) $download);
    }

    public function getCurrentStableDownload()
    {
        return $this->getDownload('SELECT * FROM download WHERE revoked != 1 AND stable = 1 ORDER BY version_number DESC, time_created DESC LIMIT 1');
    }

    public function getCurrentUnstableDownload()
    {
        if (!$current = $this->getCurrentStableDownload($this->db)) {
          return false;
        }

        return $this->getDownload('SELECT * FROM download WHERE revoked != 1 AND stable != 1 AND version_number > :number ORDER BY version_number DESC, time_created DESC LIMIT 1', array(':number' => $current->version_number));
    }

    public function findAllAvailableDescendingByVersion()
    {
        $sth = $this->db->executeQuery('SELECT * FROM download WHERE revoked != 1 ORDER BY version_number DESC, time_created DESC');
        $sth->setFetchMode(\PDO::FETCH_CLASS, 'Download');

        $downloads = array();
        foreach ($sth->fetchAll() as $download) {
            $downloads[] = $this->fixDownload($download);
        }

        return $downloads;
    }

    public function findAvailableByName($filename)
    {
        return $this->getDownload('SELECT * FROM download WHERE revoked != 1 AND filename = :filename LIMIT 1', array(':filename' => $filename));
    }

    protected function getDownload($sql, array $params = array())
    {
        $sth = $this->db->executeQuery($sql, $params);
        $sth->setFetchMode(\PDO::FETCH_CLASS, 'Download');
        $hash = $sth->fetch();

        return $hash ? $this->fixDownload($hash) : false;
    }

    protected function fixDownload($download)
    {
        if (preg_match('~([0-9]+)(?:\.([0-9]+))?(?:\.([0-9]+))?(?:-(alpha|a|beta|b|rc)-?([0-9]+))?~i', $download->filename, $matches)) {
            $download->version = $matches[0];
        } else {
            $download->version = '0.0.0';
        }

        return $download;
    }
}
