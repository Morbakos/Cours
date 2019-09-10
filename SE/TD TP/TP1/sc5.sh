#!/bin/bash

if [ $# -ne 1 ] ; then 
	echo -e " Le script attends 1 argument qui doit etre le nom d'un fichier "
else
	if [ -e $1 ] ; then
		echo " Le fichier $1 existe " 
		if [ -d $1 ] ; then
			echo -e " Le nom est un repertoire " 	
		fi 
		if [ -x $1 ] ; then 
			echo -e " Il est executable "
		fi
	else
		echo -e " Le fichier n'existe pas"	
	fi
fi
