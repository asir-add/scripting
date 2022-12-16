#!/usr/bin/env bash
script=$1

echo -e "* TESTEANDO SCRIPT $script"

[ ! -f "$script" ] && echo "Script no encontrado" && exit 1

echo -e "\n================================================================================"
echo -e "TEST 1: Calculando área de cuadrado"
echo -e "================================================================================\n"
bash -c "set -x && echo -e 'c\n2' | $script"

echo -e "\n================================================================================"
echo -e "TEST 2: Calculando área rectángulo"
echo -e "================================================================================\n"
bash -c "set -x && echo -e 'r\n2\n5' | $script"

echo -e "\n================================================================================"
echo -e "TEST 3: Calculando área triángulo"
echo -e "================================================================================\n"
bash -c "set -x && echo -e 't\n3\n10' | $script"

echo -e "\n================================================================================"
echo -e "TEST 4: Calculando área de figura que no válida"
echo -e "================================================================================\n"
bash -c "set -x && echo -e 'x' | $script"