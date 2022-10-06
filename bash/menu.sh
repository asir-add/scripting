#!/bin/bash

echo "A. Mostrar la fecha"
echo "B. Mostrar información de tu usuario"
echo "C. Listar los procesos"
read -p "Elije una opción: " opcion

case "$opcion" in
A|a)
	date
	;;
B|b)
	id
	;;
C|c)
	ps
	;;
*)
	echo "Opción incorrecta" >&2
	exit 1
esac
