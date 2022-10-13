#!/bin/bash 

source ./libreria.sh

paquetes=( cowsay sl net-tools figlet mondongo )

while true
do
	menu ${paquetes[*]}
	if [ -z $opcion ]
	then
		echo "Debe especificar una opción"
	elif [ $opcion = "s" -o $opcion = "S" ]
	then
		break
	elif [ $opcion -ge 1 -a $opcion -le ${#paquetes[*]} ]
	then
		opcion=$((opcion - 1))
		instalar-paquete ${paquetes[opcion]}
	else
		echo "Opcion incorrecta"
	fi
done

echo "Fin del script"
