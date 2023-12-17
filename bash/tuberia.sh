#!/bin/bash

cat /etc/passwd | while read usuario
do
	echo $usuario "<---" incluido por mi
done | grep false
