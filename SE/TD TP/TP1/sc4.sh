#!/bin/bash

if [ $# -ne 3 ] ; then
	echo -e " Ce script qui s'appelle $0 attends exacetement 3 arguments \\n"
else
	v1=$1
	v2=$2
	v2=$3
	grand=$v1
	
	for i in $* ; do
		if [ $i -gt $grand ] ; then
			grand=$i
		fi
	done

	echo -e " Le plus grand est $grand "
fi
