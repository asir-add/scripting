#!/bin/bash
#############################
# Calcular el área de un
# rectángulo:
# area = ancho x alto
# Autor: Fran Vargas
#############################
ancho=$1
alto=$2
area=$(expr $ancho \* $alto)
echo $area
