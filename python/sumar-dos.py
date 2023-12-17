#!/usr/bin/python3

# importamos la librería "sys" para poder leer los parámetros
import sys

def help():
    sys.stdout.write("Uso: " + sys.argv[0] + " num1 num2\n")    

# cogemos los parámetros del 1 en adelante
params=sys.argv[1:]

# si el número de parámetros es distinto de 2, entonces termina
if len(params) != 2:
    sys.stderr.write("Número de parámetros incorrecto\n")
    help()
    exit(1)
# sino, recupera los dos parámetros, los convierte números enteros (integer) y los suma
else:
    a=int(params[0])
    b=int(params[1])
    suma=a + b
    print("Resultado", suma)
