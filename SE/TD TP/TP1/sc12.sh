#!/bin/bash

nb=$(($1))
somme=0

while [ $nb -gt 0 ]; do
    chiffre=$(($nb%10))
    nb=$((nb/10))
    somme=$(($somme+$chiffre))
done

echo -e $somme