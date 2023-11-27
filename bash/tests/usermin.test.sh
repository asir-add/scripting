#!/bin/bash
script=$1

echo
echo "================================================"
echo "TEST1: Mostrar la ayuda del comando"
echo "================================================"
echo

$script --help

echo
echo "================================================"
echo "TEST2: Listar usuarios con UID >= 1000"
echo "================================================"
echo 

$script --listar

echo
echo "================================================"
echo "TEST3: Consultar fichas de usuarios"
echo "================================================"
echo

$script --consultar fvarrui
$script --consultar noexisto

echo
echo "================================================"
echo "TEST4: Crear un usuario"
echo "================================================"
echo

$script --nuevo test
$script --consultar test

echo
echo "================================================"
echo "TEST5: Eliminar usuario"
echo "================================================"
echo

$script --eliminar test
$script --consultar test
