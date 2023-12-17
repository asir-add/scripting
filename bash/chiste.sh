#!/bin/bash
total=$(cat chistes.txt | wc -l)
while true
do
	aleatorio=$(($RANDOM % $total + 1))
	chiste=$(sed "${aleatorio}q;d" chistes.txt)
	echo $chiste
	espeak -v es "$chiste"
	sleep 5s
done
