#!/usr/bin/env bash
script=$1

echo -e "\n================================================================================"
echo -e "TEST 1: Mostrando datos del usuario fvarrui que si existe desde parámetro"
echo -e "================================================================================\n"
bash -c "set -x && $script fvarrui"

echo -e "\n================================================================================"
echo -e "TEST 2: Mostrando datos del usuario fran que NO existe desde parámetro"
echo -e "================================================================================\n"
bash -c "set -x && $script fran"

echo -e "\n================================================================================"
echo -e "TEST 3: Mostrando datos del usuario fvarrui que si existe desde entrada estándar"
echo -e "================================================================================\n"
bash -c "set -x && echo fvarrui | $script"

echo -e "\n================================================================================"
echo -e "TEST 4: Mostrando datos del usuario fran que NO existe desde entrada estándar"
echo -e "================================================================================\n"
bash -c "set -x && echo fran | $script"