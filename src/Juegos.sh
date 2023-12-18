#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Uso: $0 <parametro>"
    exit 1
fi

if [ "$1" -ge 1 ] && [ "$1" -le 6 ]; then
    clips -f "./JuegosDePruebas/Juego$1.clp"
    
else
    echo "Error: El parámetro debe estar entre 1 y 6."
    exit 1

fi