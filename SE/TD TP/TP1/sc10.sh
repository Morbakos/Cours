#!/bin/bash
filelist=""

for file in `ls`; do
    if [ -f $file ]; then
        if [ -w $file ]; then
            filelist=$filelist$file"\n"
        fi
    fi
done

echo -e $filelist

if [ $# -gt 0 ]; then
    echo "Résultat sauvegardé dans $1"
    echo -e $filelist > $1;
fi