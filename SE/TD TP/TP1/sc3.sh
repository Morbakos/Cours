#!/bin/bash

if [ $# -ne 2 ] ; then
	echo -e " Ce script qui s'appelle $0 attends exacetement 2 arguments \\n"
else
	v1=$1
	v2=$2
	somme=$((v1+v2))
	echo -e " La somme est $somme"
fi
