#!/usr/bin/env bash
script=$1

echo -e "\n********************************************************************************"
echo -e "* TESTEANDO SCRIPT $script"

[ ! -f "$script" ] && echo "Script no encontrado" && exit 1

echo -e "Creando estructura de prueba"
rm -fr directorio
mkdir directorio
touch -d "09/20/2021" directorio/document.xml 
touch -d "09/18/2021" directorio/foto.jpeg
touch -d "10/03/2022" directorio/fichero1.txt
touch -d "10/25/2022" directorio/fichero2.pdf
touch -d "11/13/2022" directorio/otor.png
touch -d "11/18/2022" directorio/otromas.py

echo -e "\n================================================================================"
echo -e "TEST 1: Organizar directorio"
echo -e "================================================================================\n"
bash -c "set -x && $script directorio"
tree directorio
