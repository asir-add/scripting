#!/bin/bash
minimo=1
maximo=100
aleatorio=$(( $RANDOM % $maximo + $minimo ))
ganaste=0
intentos=0
while [ $ganaste -eq 0 ]
do
    read -p "Introduce un número entre $minimo y $maximo: " numero
    if [ -z $numero ]
    then    
        echo Introduce un número
        continue
    fi

    intentos=$(( $intentos + 1 ))
    if [ $numero -eq $aleatorio ]
    then
        figlet GANASTE
        echo Lo has conseguido en $intentos intentos.
        break
    elif []

done