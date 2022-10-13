#!/bin/bash
directorio=$1
# & = ampersand (&& = and = "y" lógico)
[ -z $directorio] && directorio=.
total=0
for fichero in $directorio/*
do

    if [ -f $fichero ]
    then
        peso=$(ls -l $fichero | cut -d" " -f5)
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