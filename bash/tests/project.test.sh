#!/usr/bin/env bash
script=$1

echo -e "\n********************************************************************************"
echo -e "* TESTEANDO SCRIPT $script"

[ ! -f "$script" ] && echo "Script no encontrado" && exit 1

echo -e "\n================================================================================"
echo -e "TEST 1: Mostrando ayuda"
echo -e "================================================================================\n"
bash -c "set -x && $script --help"
