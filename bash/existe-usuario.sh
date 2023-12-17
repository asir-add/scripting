#!/bin/bash

if [ $# -eq 0 ]; then
	echo Debe introducir el nombre del usuario
	exit 1
fi

if grep -q "^$1:" /etc/passwd
then
	echo El usuario $1 existe.
else
	echo El usuario $1 NO existe.
fi

