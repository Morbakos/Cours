#!/bin/bash
nb=$(($1))
chaine=""
while [ $nb -gt 0 ]; do
    chiffre=$(($nb%10))
    nb=$((nb/10))
    chaine=$chaine$chiffre
done
echo $chaine