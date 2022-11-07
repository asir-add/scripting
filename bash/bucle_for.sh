#!/bin/bash

for (( i=1 ; i<=10 ; i++ )) ; do
	echo $i
done

for var in primero segundo tercero ; do
	echo $var
done

var2="primero segundo tecero"
for var in $var2 ; do
	echo $var
done

for var in $@ ; do
	echo $var
done

