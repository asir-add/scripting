#!/bin/bash
script=$1

# comprueba que se ha especificado el nombre del script
if [ -z $script ]
then
	echo "Debe especificar el nombre del script"
	exit 1
fi

# comprueba si ya existe
if [ -e $script ]
then
	echo "$script ya existe"
	exit 1
fi

echo "#!/bin/bash" > $script
chmod +x $script
nano $script
