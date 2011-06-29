#!/bin/sh
for f in `cat cleanup.txt`
do

if [ -f $f ] ; then
        ls -l $f
        rm  $f
fi

done

