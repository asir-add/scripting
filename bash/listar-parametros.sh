#!/bin/bash
echo Soy el script $0
echo Me han pasado $# parámetros
echo Y estos son los parámetros: $*
echo Y estos son los parámetros: $@
i=0
for parametro in "$@"
do
    echo El parámetro $i vale $parametro
    i=$((i+1))
done
