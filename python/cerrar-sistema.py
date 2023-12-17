#!/usr/bin/python3

import os

opcion=""

while opcion < "a" or opcion > "c":
    print("a. Cerrar sesión")
    print("b. Reiniciar el sistema")
    print("c. Apagar el sistema")
    opcion=input("Elige una opción: ").lower()

match opcion:
    case "a":
        print("Cerrando la sesión")
        ppid=os.getppid()
        os.system(f"kill -9 {ppid}")
    case "b":
        time=input("Indique en cuántos minutos se reiniciará el sistema: ")
        if time != "":
            os.system(f"shutdown -r +{time}")
        else:
            print("Reinicio cancelado")
    case "c":
        time=input("Indique en cuántos minutos se apagará el sistema: ")
        if time != "":
            os.system(f"shutdown -P +{time}")
        else:
            print("Apagado cancelado")
