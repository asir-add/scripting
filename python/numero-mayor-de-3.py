#!/usr/bin/env python3

import sys

script=sys.argv[0]
params=sys.argv[1:]

if len(params) != 3:
    print(f'El número de parámetros no es correcto {params}')
    exit(1)

# convierte el array de parámetros de tipo "string" en un array de "int"
for i in range(0, len(params)):
    params[i] = int(params[i])

# ordena la lista de parámetrosde menor a mayor
params.sort()

# cogemos el último
mayor=params[len(params) - 1]

print(f"El mayor es {mayor}")