#!/bin/bash

echo -n "¿Es por la mañana? (Responda 'si' o 'no'): "
read respuesta

case $respuesta in
	Si | SI | si | sI | s | S ) echo Buenos días;;
	No | NO | no | nO | n | N ) echo Buenas noches;;
	*) echo No ha respondido a mi pregunta!!!;;
esac
	
