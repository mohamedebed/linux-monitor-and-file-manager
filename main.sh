#!/bin/bash

while true; do
    echo "................................."
    echo "[ Welcome to the menu ]"
    echo "[ Choose what you want to make ]"
    echo "1) File Management"
    echo "2) System Monitoring"
    echo "3) Exit"
    echo "................................."
    read -p "Choose an option [1-3]: " option

    case $option in
        1) bash file_mangment.sh ;;   
        2) bash system_monitor.sh ;;
        3) echo "Goodbye!"; exit 0 ;; 
        *) echo "Invalid choice!"; sleep 1 ;;  # sleep makes it wait 1s
    esac
done

