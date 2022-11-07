#!/bin/bash

PS3="Opción: "

select i in Listado Quien Salir
do

	case $i in
		Listado) ls -l;;
		Quien) who;;
		Salir) exit 0;;
		*) echo Opción incorrecta
	esac

done
