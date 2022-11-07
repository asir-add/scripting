#!/bin/bash

nombres=$(ls $1)
for i in $nombres
do
	if [ -d $1/$i ]; then
		nombres="$nombres "$(ls $1/$i)
	fi
done

maslarga=""
longitud=0
for i in $nombres
do
	longactual=$(echo $i | wc -c)
	if [ $longactual -gt $longitud ]; then
		maslarga=$i
		longitud=$longactual
	fi	
done

echo El nombre más largo es $maslarga

