#!/bin/bash
##################################
# Fichero: incrementador.sh
# Autor: Fran Vargas
# Descripción:
##################################

# Comprobar si resultado.txt existe; sino, lo creo con un 0.
[ ! -f resultado.txt ] && echo 0 > resultado.txt

# Lee el número del fichero resultado.txt
numero=$(cat resultado.txt)
echo "El número anterior es $numero"

# Lo incrementa en 1
numero=$(expr $numero + 1)
echo "El número ha sido incrementado en 1"

# Guarda el número incrementado en el fichero resultado.txt
echo $numero > resultado.txt
echo "Se ha guardado $numero en el fichero"

