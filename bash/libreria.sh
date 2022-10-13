instalado() {
	dpkg -s $1 > /dev/null 2> /dev/null
}

mostrar-opcion() {
	if instalado $2
	then
		echo $1. Desinstalar $2
	else
		echo $1. Instalar $2
	fi
}

instalar-paquete() {
	if instalado $1
	then
		sudo apt remove -y $1
	else
		sudo apt install -y $1
	fi
}

menu() {
    i=1
    for paquete in $*
    do
	    mostrar-opcion $i $paquete
        i=$((i + 1))
    done
	echo "S. Salir"
	read -p "Elige una opción: " opcion
}