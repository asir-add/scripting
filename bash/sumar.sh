#!/bin/bash
operando1=`echo $1 | tr ":" " "`
operando2=`echo $2 | tr ":" " "`
res=""
campo=1
for i in $operando1
do
	j=`echo $operando2 | cut -f $campo -d " "`
	aux=`expr $i + $j`
	res=$res":"$aux
	campo=`expr $campo + 1`
done
cantidad=`echo $res | wc -c`
echo $res | cut -c 2-$cantidad
