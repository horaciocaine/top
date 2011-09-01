#!/bin/sh

# --dry-run
rsync --exclude="web/index_dev.php" --exclude="cache" --exclude=".git" --progress -azC --force --delete ./ symfony:/var/www/swiftmailer.org
