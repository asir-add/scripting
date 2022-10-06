#!/bin/bash
########################################
# Suma dos números pasados por parámetro
# Autor: fvarrui
########################################
if [ $# -ne 2 ]; then
	echo "Debe especificar 2 parámetros" >&2
	exit 1
fi
operando1=$1
operando2=$2
resultado=$(expr $operando1 + $operando2 2> /dev/null)
if [ $? -ne 0 ]; then
	echo "Los operandos deben ser números enteros" >&2
	exit 1
fi
echo "El resultado de sumar $operando1 y $operando2 es $resultado"
