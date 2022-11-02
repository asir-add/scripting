#!/bin/bash
bloques=$(./listar-particiones.sh | grep ^/dev/sda2 | tr -s " " | cut -f 5 -d " ")
bytes_x_bloque=$(./bytes-por-bloque.sh | tr -s " " | cut -f 3 -d " ")
resultado=`expr $bloques / 4 \* $bytes_x_bloque`
echo $resultado bytes
echo `expr $resultado / 1024` kilobytes
echo `expr $resultado / 1024 / 1024` megabytes
