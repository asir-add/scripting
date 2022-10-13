#!/bin/bash
variable="primero segundo tercero cuarto"
echo $variable

array=(primero segundo tercero cuarto)
echo El elemento 3 del array es ${array[2]}
echo Todos los elementos del array: ${array[*]}
echo El número de elementos del array es ${#array[*]}

for i in ${array[*]}
do
    echo $i
done

# ./arrays.sh primero segundo tercero cuarto quinto
# $* = "primero segundo tercero cuarto quinto"
# $@ = (./arrays.sh primero segundo tercero cuarto quinto)

arguments=( "$@" ) # convierte los parámetros en un array
echo ${arguments[0]}


