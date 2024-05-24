#!/bin/bash
prog=$0
usuario=$1

[ $USER != root ] && echo "Debes ser root" && exit 1

# comprobamos que el número de parámetros sea 1
if [ $# -ne 1 ]
then
	echo "Debe especificar el nombre de usuario"
	echo "Uso: $prog usuario"
	exit 1
fi

# busca $usuario en el fichero /etc/passwd
if cat /etc/passwd | grep -q "^$usuario:"
then
	echo "$usuario existe!!! ;-D"
else
	echo "$usuario NO existe :_("
fi
