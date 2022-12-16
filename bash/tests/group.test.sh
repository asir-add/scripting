#!/usr/bin/env bash
script=$1

echo -e "* TESTEANDO SCRIPT $script"

[ ! -f "$script" ] && echo "Script no encontrado" && exit 1

echo -e "\n================================================================================"
echo -e "TEST 1: Mostrando el grupo adm"
echo -e "================================================================================\n"
bash -c "set -x && $script adm"

echo -e "\n================================================================================"
echo -e "TEST 2: Mostrando el grupo root"
echo -e "================================================================================\n"
bash -c "set -x && $script root"

echo -e "\n================================================================================"
echo -e "TEST 3: Comprobando si se controla si se especifica grupo"
echo -e "================================================================================\n"
bash -c "set -x && $script"

echo -e "\n================================================================================"
echo -e "TEST 4: Comprobando si se controla si el grupo especificado existe"
echo -e "================================================================================\n"
bash -c "set -x && $script noexisto"