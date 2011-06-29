#!/bin/sh

# --dry-run
rsync --exclude=".git" --progress -azC --force --delete ./ hippo:/var/www/production/swiftmailer/www
