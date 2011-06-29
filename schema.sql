CREATE TABLE IF NOT EXISTS download (
    id          INTEGER,
    filename VARCHAR(255) default NULL,
    time_created timestamp default NULL,
    filesize INTEGER default NULL,
    source VARCHAR(255) default NULL,
    revoked INTEGER NOT NULL default '0',
    stable INTEGER NOT NULL default '1',
    version_number VARCHAR(18) default NULL,
    PRIMARY KEY (id)
);
