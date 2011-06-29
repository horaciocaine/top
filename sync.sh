#!/bin/sh

# --dry-run
rsync --exclude="cache" --exclude=".git" --progress -azC --force --delete ./ symfony:/var/www/swiftmailer.org
