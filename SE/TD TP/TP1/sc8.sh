#!/bin/bash
echo "Saisir le nom du repertoire source:"
read src
if [ -d $src ]; then
    echo "Saisir le nom du repertoire destination:"
    read dest
    if [ -d $dest ]; then
        if [ -x $dest ]; then
            chmod u+w $dest
        fi
        filelist=`ls $dest`
        for file in `ls $src` ; do
            if [ -f $file ]; then
                for f in $filelist ; do
                    if [ $file == $f ]; then
                        echo "un fichier $file existe déjà dans $dest"
                    fi
                done
                cp $src/$file $dest
            fi
        done
        chmod u-w $dest
    else echo "Erreur: le nom ne correspond pas à un repertoire"
    fi
else echo "Erreur: le nom ne correspond pas à un repertoire"
fi