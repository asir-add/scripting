#!/bin/bash

echo -n "�Es por la ma�ana? (Responda 'si' o 'no'): "
read respuesta

case $respuesta in
	Si | SI | si | sI | s | S ) echo Buenos d�as;;
	No | NO | no | nO | n | N ) echo Buenas noches;;
	*) echo No ha respondido a mi pregunta!!!;;
esac
	
