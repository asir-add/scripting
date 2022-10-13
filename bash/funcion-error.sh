#!/bin/bash

error() {
    echo Ha ocurrido un error
    exit 1
}

if [ $# -eq 0 ]; then
    error
else
    echo Hay $# parámetros
fi