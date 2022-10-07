#!/bin/bash
#numero=0
#while read linea
#do
#	numero=$(($numero + 1))
#	usuario=$(echo $linea | cut -d: -f1)
#	echo "$numero : $usuario"
#done < /etc/passwd
#echo "Hay $numero usuarios en el sistema"

informe=usuarios.html
echo "<!DOCTYPE html>" > $informe
echo "<html>" 	>> $informe
echo "<head>" 	>> $informe
echo "    <title>Usuarios</title>" >> $informe
echo "</head>" 	>> $informe
echo "<body>" 	>> $informe
echo "    <table border='1px'>" >> $informe
echo "       <tr><th>Nombre</th><th>Home</th></tr>" >> $informe

while read linea
do
	usuario=$(echo $linea | cut -d: -f1)
	home=$(echo $linea | cut -d: -f6)
	echo "       <tr><td>$usuario</td><td>$home</td></tr>" >> $informe
done < /etc/passwd

echo "    </table>" >> $informe
echo "</body>" 	>> $informe
echo "</html>" 	>> $informe

firefox $informe &
