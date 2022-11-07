#!/bin/bash

if [ $# = 0 ]; then
	echo Debe especificar el nombre del directorio. >&2
	exit 1
fi

if [ ! -d $1 ]; then
	mkdir $1
	chmod 700 $1
else
	echo El directorio $1 ya existe.
fi
