#!/bin/bash

if [ $# -eq 0 -o "$1" == "--help" ]; then
	echo Muestra la cantidad de bytes que ocupa el contenido del directorio indicado.
	echo 
	echo Uso: $0 [--help] [directorio]
	echo
	exit 0
fi

total=0
for bytes in `ls -l $1 | grep "^-" | tr -s " " | cut -f 5 -d " "`; do
	total=`expr $total + $bytes`
done

echo $total bytes
#echo `expr $total / 1024` kilobytes
#echo `expr $total / 1024 / 1024` megabytes

