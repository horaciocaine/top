#!/bin/bash

CURRENT=$(php -r "echo realpath(dirname('$0'));")

cd $CURRENT
sphinx-build -b html -E -a -c . ../vendor/swiftmailer/doc _build
