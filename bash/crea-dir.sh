#!/bin/bash
directorio=$1

# comprueba si $directorio está vacío
if [ -z "$directorio" ]
then
	echo "Debe especificar un directorio"
	exit 1
fi

# comprobar si $directorio existe y es un directorio
if [ -f $directorio ]
then
	echo "$directorio no es un directorio"
	exit 1
elif [ ! -d $directorio ]
then
	echo "creando el directorio $directorio"
	mkdir $directorio
else
	echo "$directorio ya existe"
fi

# le asigna los permisos 700 (rwx------)
chmod 700 $directorio
