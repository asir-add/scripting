#!/bin/bash

# separador de números decimales (también podría se la ",")
SEPARADOR=.

# devuelve el máximo de dos números
function max() {
	if [[ $1 -lt $2 ]]; then
		echo $2
	else
		echo $1
	fi
}

# normaliza la parte de cimal, para que tenga el número de dígitos indicados, añadiendo 0s a la izquierda
function normalizar() {
	var=$1
	varLong=`echo $var | wc -c`
	dif=`expr $2 - $varLong`
	for (( i=1 ; i<=$dif ; i++ )) ; do
		var=$var'0'
	done
	echo $var
}

# devuelve la parte entera de un número
function parteEntera() {
	echo $1 | cut -f 1 -d $SEPARADOR
}

# devuelve la parte decimal de un número
function parteDecimal() {
	echo $1 | cut -f 2 -d $SEPARADOR
}

# recupera los dos parámetros de entrada
num1=$1
num2=$2

# separa la parte entera de la parte decimal del primer parámetro
e1=`parteEntera $num1`
d1=`parteDecimal $num1`

# separa la parte entera de la parte decimal del segundo parámetro
e2=`parteEntera $num2`
d2=`parteDecimal $num2`

# calcula el tamaño de las partes decimales de ambos parámetros
d1Long=`echo $d1 | wc -c`
d2Long=`echo $d2 | wc -c`

# recupera el tamaño de la parte decimal mayor 
mayor=`max $d1Long $d2Long`

# normaliza las partes enteras, para que tengan el mismo número de dígitos
d1=`normalizar $d1 $mayor`
d2=`normalizar $d2 $mayor`

# opera ambas parte (parte decimal y parte entera) por separado
eRes=`expr $e1 + $e2`
dRes=`expr $d1 + $d2`

# calcula el tamaño de la parte decimal resultante (es decir, su número de dígitos)
dResLong=`echo $dRes | wc -c`

# calcula la diferencia entre la parte decimal resultante y la actual (partes decimales normalizadas)
dResDif=`expr $dResLong - $mayor`

# hay que ajustar la parte entera por desbordamiento de la parte decimal
if [ $dResDif -gt 0 ]; then
	# recupera los dígitos excedentes de la parte decimal
	exceso=`echo $dRes | cut -c 1-$dResDif`
	# extrae de la parte decimal resultante lo que no es excedente
	dResDif=`expr $dResDif + 1`
	dRes=`echo $dRes | cut -c $dResDif-$dResLong`
	# suma el excedente a la parte entera
	eRes=`expr $eRes + $exceso`
fi

# devuelve el resultado en pantalla
echo $eRes$SEPARADOR$dRes
