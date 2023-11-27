#!/bin/bash
disco=/dev/$1
montaje=$2

# secuencia de ordenes para fdisk:
# o = crea la tabla de particiones
# n = crea una nueva particion
# p = indica que es de tipo primaria
# 1 = indica que es la partición 1
# \n = selecciona el cilindro inicial por defecto (el principio del disco)
# \n = selecciona el cilindro final por defecto (así coge todo el disco)
# w = guarda los cambios en el disco
echo -e o\\nn\\np\\n1\\n\\n\\nw\\n | fdisk $disco

# formatea la partición creada
mkfs -t ext3 ${disco}1

# chequea que el disco no tiene errores
fsck ${disco}1

# la monta
mount -t ext3 ${disco}1 $montaje

