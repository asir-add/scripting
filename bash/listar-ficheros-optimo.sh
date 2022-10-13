#!/bin/bash
directorio=$1
# & = ampersand (&& = and = "y" lógico)
[ -z $directorio] && directorio=.
total=0
IFS=$'\n'
i=0
for linea in $(ls -l $directorio)
do
    [ $i -eq 0 ] && i=$((i+1)) && continue    

    fichero=$(echo $linea | tr -s " " | cut -d" " -f9)
    if [ -f $fichero ]
    then
        peso=$(echo $linea | cut -d" " -f5)
        echo $fichero es un fichero y ocupa $peso bytes
        total=$((total+peso))
    elif [ -d $fichero ]
    then
        echo "$fichero es un directorio"
    else
        echo "$fichero no sé lo que es"
    fi

done
echo El total ocupado por los ficheros es $total bytes