#!/bin/bash
prog=$0
nombre=$1

if [ $# -lt 1 ] # lt = less than
then
	read -p "Introduce un nombre: " nombre
elif [ $# -gt 1 ] # gt = greater than
then
	echo "Has puesto muchos parámetros, totorota!"
	exit 123
fi

echo "¡Hola $nombre! ¿Cómo estás?"
