#!/bin/bash

PS3="Opci�n: "

select i in Listado Quien Salir
do

	case $i in
		Listado) ls -l;;
		Quien) who;;
		Salir) exit 0;;
		*) echo Opci�n incorrecta
	esac

done
