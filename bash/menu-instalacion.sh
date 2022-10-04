#!/bin/bash
if which cowsay > /dev/null
then
	echo "Cowsay está instalado"
else
	echo "Cowsay no está instalado. ¿Quieres instalarlo?"
fi
