#!/bin/bash

minimo=$1
maximo=$2
valor=$3

# comprueba si el valor es mayor o igual que el mínimo y
# menor o igual que el máximo
if [ $valor -ge $minimo -a $valor -le $maximo ]
then
	echo El valor $valor está en el rango de $minimo a $maximo.
else
	echo El valor $valor está fuera del rango de $minimo a $maximo.
fi
