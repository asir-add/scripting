#!/bin/bash
until [ "$a" != "" ]
do
	read -p "Escribe algo: " a
done
echo "Has escrito $a"

