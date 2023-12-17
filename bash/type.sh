#!/bin/bash
i=1
while read linea
do
	echo -e $i:\\t$linea
	i=`expr $i + 1`	
done
