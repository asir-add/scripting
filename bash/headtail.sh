#!/bin/bash
if [ $# -eq 0 ]; then
	echo -e ERROR: Debe indicar la línea o rango de líneas a mostrar\\n >&2
	exit 1
elif [ $# -eq 1 ]; then
	desde=$1		
	hasta=$1
else
	desde=$1
	hasta=$2
fi
hasta=`expr $hasta - $desde + 1`
cat <&0 | head -n $desde | tail -n $hasta
