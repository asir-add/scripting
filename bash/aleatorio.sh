#!/bin/bash
desde=$1
hasta=$2
rango=`expr $2 - $1 + 1`
nanosegundos=`date +"%N"`
aleatorio=`expr \( $nanosegundos % $rango \) + $1`
echo $aleatorio
