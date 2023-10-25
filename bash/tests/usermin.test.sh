#!/bin/bash
script=$1

echo
echo "================================================"
echo "TEST1: Mostrar la ayuda del comando"
echo "================================================"
echo

$1 --help

echo
echo "================================================"
echo "TEST2: Listar usuarios con UID >= 1000"
echo "================================================"
echo 

$1 --listar

echo
echo "================================================"
echo "TEST3: Consultar fichas de usuarios"
echo "================================================"
echo

$1 --consultar fvarrui
$1 --consultar noexisto

echo
echo "================================================"
echo "TEST4: Crear un usuario"
echo "================================================"
echo

$1 --nuevo test
$1 --consultar test

echo
echo "================================================"
echo "TEST5: Eliminar usuario"
echo "================================================"
echo

$1 --eliminar test
$1 --consultar test
