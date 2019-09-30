#!/bin/bash
cat $1 $2 | sort > $3
nlines=`wc -l $3 | cut -f1 -d' '`
echo $nlines