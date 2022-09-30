#!/bin/bash
echo "El número de parámetros pasados al script es $#"
if [ $# -ne 2 ]
then
	echo "el número de parámetros es incorrecto"
	exit 1
else
	echo "se han pasado los parámetros correctos"
fi
