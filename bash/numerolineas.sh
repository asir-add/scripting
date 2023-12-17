#!/bin/bash
i=0
while read line;
do
	i=`expr $i + 1`
done
echo $i líneas
