#!/bin/bash

if [ $# = 0 ]; then
	echo Debe indicar si desea "activar" o "desactivar" el mensaje de bienvenida.
	exit 1
fi

opcion=`echo $1 | tr [A-Z] [a-z]`
mensaje="figlet Hola \`whoami\`!"

case $opcion in
	activar)
		echo $mensaje >> ~/.bashrc
		echo Mensaje de bienvenida activado
		;;
	desactivar) 
		grep -v "^$mensaje" ~/.bashrc > /tmp/bashrc
		mv /tmp/bashrc ~/.bashrc
		echo Mensaje de bienvenida desactivado
		;;
	*) 	
		echo La opción $opcion no es válida
		exit 1
		;; 
esac
