#!/bin/bash
#############################
# Calcular el área de un
# rectángulo:
# area = ancho x alto
# Autor: Fran Vargas
#############################
read -p "Ancho:" ancho
read -p "Alto:" alto
area=$(expr $ancho \* $alto)
echo $area
