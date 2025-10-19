#!/bin/bash

while true; do
    # Welcome to system monitor
    echo ".................................."
    echo "1) Show system information."
    echo "2) Show CPU usage."
    echo "3) Show memory usage."
    echo "4) Show disk usage."
    echo "5) Return."
    echo ".................................."
    read -p "Choose an option : " opt
   
    # Now with cases
    case $opt in
        1) echo "System Information"
           echo "Hostname: $(hostname)"
           echo "OS: $(uname -o)"
           echo "Kernel: $(uname -r)"
           echo "Uptime: $(uptime -p)"
           echo "Current Date/Time: $(date)"
           sleep 2
           ;;

        2) echo "CPU Usage"
           top -bn1 | grep "Cpu(s)"
           sleep 2
           ;;

        3) echo "Memory Usage"
           free -h
           sleep 2
           ;;

        4) echo "Disk Usage"
           df -h
           sleep 2
           ;;

        5) echo "Returning to main menu..."
           sleep 1
           break
           ;;

        *) echo "Invalid choice! Please try again."
           sleep 1
           ;;
    esac
done

# Made by Mohamed Ebed

