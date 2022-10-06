#!/bin/bash
dia=$(date | cut -d" " -f1)
case $dia in
lun|m*|jue)
	echo "Hoy es día laborable"
	;;
vie)
	echo "Hoy empieza el finde"
	date
	;;
sab|dom|vie)
	echo "Es fin de semana"
	;;
*)
	echo "No sé qué día es hoy"
	;;
esac
