#!/bin/bash

cantidades=`ls -la $1 | grep ^- | sort -n -k5 | tr -s " " | cut -f 5 -d " "` 
total=0
for i in $cantidades 
do
	total=`expr $total + $i`
done
echo La cantidad es de $total bytes

