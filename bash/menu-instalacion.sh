#!/bin/bash
if which cowsay > /dev/null
then
	echo "Cowsay instalado"
else
	echo "Cowsay no instalado"
fi

if which ifconfig > /dev/null
then
	echo "Net-Tools instaladas"
else
	echo "Not-Tools no instaladas"
fi
