#!/bin/bash
numero=0
while read linea
do
	numero=$(($numero + 1))
	usuario=$(echo $linea | cut -d: -f1)
	echo "$numero : $usuario"
done < /etc/passwd
echo "Hay $numero usuarios en el sistema"
