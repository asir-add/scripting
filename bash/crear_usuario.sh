#!/bin/bash

echo Herramienta de creación de usuarios:

echo -n "* Nombre de usuario: "
read username

echo -n "* Nombre completo: "
read fullname

echo -n "* Contraseña: "
read userpass

echo -n "* Shell (p.ej.: /bin/bash)): "
read usershell

# crea el grupo del usuario
groupadd $username

# crea al usuario
useradd -c "$fullname" -d /home/$username -g $username -s $usershell $username

# le asigna la contraseña
echo -e $userpass\\n$userpass | passwd $username > /dev/null 2> /dev/null

# crea la carpeta del usuario y le asigna los permisos
cp -R /etc/skel /home/$username
chown -R $username:$username /home/$username
chmod 700 /home/$username

echo El usuario $username se ha creado con éxito

