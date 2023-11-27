#!/usr/bin/python3

# importa la librería "os"
import os

# lee la variable de entorno "USER" y la guarda en la variable "user"
user=os.getenv("USER")

# ejecuta el comando "figlet user"
os.system("figlet " + user)