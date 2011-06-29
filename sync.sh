#!/bin/sh

# --dry-run
rsync --exclude=".git" --exclude="cache" --exclude="web/wikidocs" --exclude="web/wikiimages" --exclude=".git" --progress -azC --force --delete ./ hippo:/var/www/production/swiftmailer/www
