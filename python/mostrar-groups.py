#!/usr/bin/python3

import sys

params=sys.argv[1:]

filter= "" if len(params) < 1 else params[0]
print("Buscando grupos que contengan en su nombre", filter, "...")


print(f"{'Línea':5} {'Fichero':40} {'Partes':40} {'Nombre':20} GID")
print(f"{'='*5} {'='*40} {'='*40} {'='*20} {'='*4}")

f = open("/etc/group")
for no, line in enumerate(f, 1):
	line=line.strip()
	parts=line.split(":")
	name=parts[0]
	gid=parts[2]
	if filter in name or filter is None:
		print(f"{no:5} {line:40} {str(parts):40} {name:20} {gid}")
