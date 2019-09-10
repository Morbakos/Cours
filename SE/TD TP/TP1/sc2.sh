#!/bin/bash

echo  " "    # pour sauter une ligne

if [ $# == 0 ]  ; then 
	echo -e "   Ce script qui s'appelle $0 n'a pas d'argument ! \\n"
else 
	echo -e  \\t Le premier argument de $0 :  $1 \\n 
	if [ $#  >  1 ] ; then 
	   echo -e \\t Les arguments suivants du script $0 :  \( 1 arg par ligne \)
	   for i in  $*  ; do  
	     echo  -e \\t \\t $i
	   done
	fi
fi
