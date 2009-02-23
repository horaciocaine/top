DROP TABLE IF EXISTS download;
CREATE TABLE download (
  downloadid INT NOT NULL,
  downloadsource ENUM('sourceforge', 'github', 'googlecode') NOT NULL,
  releasedate INT NOT NULL,
  filename VARCHAR(255) NOT NULL,
  filesize INT NOT NULL,
  isrevoked TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (downloadid)
) ENGINE=InnoDB CHARSET=utf8;
