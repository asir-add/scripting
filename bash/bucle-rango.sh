#!/bin/bash
total=0
# 1+2+3+4+5
for i in $(seq $1 $2)
do    
    # si el resto de la división entre 2 es 0, me salto la iteración (continue)
    resto=$(($i % 2)) # $(expr $i % 2)
    if [ $resto -eq 0 ]
    then
        echo ignorando $i
        continue
    fi
    echo sumando $i
    total=$((total+i))
    if [ $total -gt 100 ]
    then
        echo saliendo del for
        break
    fi
done
echo $total