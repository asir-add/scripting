#!/bin/bash
echo $1
for fichero in $(ls -a $1); do
	if [ -f $fichero ]; then
		echo Fichero normal: $fichero
	elif [ -d $fichero ]; then
		echo Directorio: $fichero
	else
		echo Desconocido: $fichero
	fi 
done
