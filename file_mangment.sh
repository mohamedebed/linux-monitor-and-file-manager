#!/bin/bash

while true;do
	# Welcome to file manger 
	echo ".................................."
	echo "1) Create file/dir."
	echo "2) Copy file/dir."
	echo "3) Rename file/dir."
	echo "4) Delete file/dir."
	echo "5) Backup file/dir."
	echo "6) Zip file/dir."
	echo "7) Return."
	echo "................................."
	read -p "Choose an option : " opt
	#--------------------------
	# Now with cases 
	case $opt in
		1) read -p "Do you want to make file? (y/n)" ans
		   if [[ $ans = "y"]]; then
		  	read -p "Enter file name : " file_name
		  	touch "$file_name" && echo "File created"
		   else
			read -p "Enter Directory name : " dir_name
			mkdir "$dir_name" && echo "Directory created"
		   fi
		   ;;

		2) read -p "Enter file path : " path
		   read -p "Destination path : " des_path
		   cp "$path" "$dees_path"
		   ;;

	   	3) read -p "Enter the current name : " old_name
		   read -p "Enter the new name: " new_name
		   mv "$old_name" "$new_name"
		   ;;

		4) read -p "Enter the name of file/dir to remove : " rem
		   read -p "Are you sure you want to delete? (y/n) " con
		   if [[ "$con" = "y" ]]; then
			   rm -rf "$rem"
		   else
			   echo "Undone deleting"; sleep 1
		   fi
		   ;;

	        5) read -p "Enter the name of file or directory to back up: " target
 		   read -p "Enter backup file name : " backup_name
  		   tar -czf "${backup_name}.tar.gz" "$target" && echo "Backup created: ${backup_name}.tar.gz"
		   ;;

	        6) read -p "Enter the file or directory to zip: " zip_target
    		   read -p "Enter the name of the zip file (without .zip): " zip_name
  		   zip -r "${zip_name}.zip" "$zip_target" && echo "File zipped: ${zip_name}.zip"
 	   	   ;;
		   
		7) echo "Returning to main menu..."
           	   sleep 1
           	   break
           	   ;;

     		*) echo "Invalid choice! Please try again."
            	   sleep 1
           	   ;;
    	esac
done   



