#!/bin/bash

salida=/tmp/usuarios.html

out() {
	echo -e $1 >> $salida
}

out "<html>"
out "\t<head>"
out "\t\t<title>Listado de usuarios del sistema</title>"
out "\t</head>"
out "\t<body>"
out "\t\t<h1>Usuarios:</h1>"
for usuario in `cat /etc/passwd | cut -f 1 -d : | sort `
do
	out "\t\t$usuario</br>"
done
out "\t</body>"
out "</html>"

firefox $salida

