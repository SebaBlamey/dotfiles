#!/bin/bash

check_updates() {
    sudo pacman -Sy
    pacman_updates=$(pacman -Qu | wc -l)
    yay_updates=$(yay -Qu | wc -l)
    total_updates=$((pacman_updates + yay_updates))

    echo " Actualizaciones pendientes: $total_updates"
}

ask_for_update(){
    read -p "¿Desea actualizar el sistema? [Y/n]: " choise
    case "$choise" in
        y|S|""|s|Y)
            echo "Actualizando sistema..."
            sudo pacman -Syu
            yay -Syu
            ;;
        n|N)
            echo "Saliendo..."
            ;;
        *) 
            echo "Opcion no valida. Saliendo...";;
    esac
}

if [ "$1" == "--check" ]; then
    check_updates
    ask_for_update
else
    echo "Uso: $0 [--check]"
fi
