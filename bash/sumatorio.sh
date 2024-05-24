#!/bin/bash

function sumatorio() { 
    desde=$1
    hasta=$2
    suma=0    
    for i in $(seq $desde $hasta)
    do
        suma=$((suma+i))
    done
    echo $suma
}

function is_an_email() {
    if echo "$1" | grep -q "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$"
    then
        return 0
    fi
    return 1

}

function is_a_number() {
    #if [ "$1" -eq "$1" ] 2> /dev/null
    if echo "$1" | grep -q "^[0-9][0-9]*$"
    then
        return 0
    fi
    return 1
}

if [ $# -ne 2 ]
then
    echo "Uso: $0 desde hasta"
    exit 1
fi

desde=$1
if ! is_a_number $desde
then
    echo "El primer parámetro no es un número"
    exit 1
fi

hasta=$2
if ! is_a_number $hasta
then
    echo "El segundo parámetro no es un número"
    exit 1
fi

suma=$(sumatorio $desde $hasta)
echo "La suma de los números comprendidos entre $desde y $hasta es $suma"
