#!/bin/sh

# --dry-run
rsync --exclude=".git" --exclude="/application/config/db.ini" --exclude="/htdocs/wikidocs/" --exclude="/htdocs/wikiimages/" --progress -azC --force --delete ./ hippo:/var/www/production/swiftmailer/www
