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
            peutcopier=0
            for f in $filelist ; do
                if [ $file == $f ]; then
                    echo "un fichier $file existe déjà dans $dest"
                    if [ $file -ot $f ]; then
                        echo "et il est plus recent"
                        peutcopier=1
                    fi
                    else
                    peutcopier=0
                fi
            done
        if [ $peutcopier -eq 0 ]; then
            cp -v $src/$file $dest >> log.txt
        fi
        done
        chmod u-w $dest
    else echo "Erreur: le nom ne correspond pas à un repertoire"
    fi
else echo "Erreur: le nom ne correspond pas à un repertoire"
fi
