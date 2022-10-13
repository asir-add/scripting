#!/bin/bash
PS3="Elije una opción: "
select opcion in Primero Segundo "Tercero y medio" Salir
do
    echo "Ha elegido $opcion"
    case "$opcion" in
    Primero)
        echo "Yo soy el primero"
        ;;
    Segundo)
        echo "Yo soy el segundo"
        ;;
    "Tercero y medio")
        echo "Yo soy el tercero y medio"
        PS3="¿Qué quieres comprar? "
        select opcion in Casa Árbol Coche
        do
            echo "Ha elegido $opcion"
        done
        ;;
    Salir)
        break
        ;;
    *)
        echo "Opción no válida" >&2
    esac
done
echo "Terminando"