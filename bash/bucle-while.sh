#!/bin/bash
a=1
while [ $a -le 10 ]
do
	echo "Iteración $a"
	a=$(($a + 1))
done

# [ ... ]    = test
# [[ ... ]]  = test
# $(( ... )) = expr

