#!/bin/bash

#name: lior cohen
#date: 12/12/2017
#homework: create a script that will show menu that will execute previous script. 



source ./3-fun.sh #load the function from 3-fun.sh script
PS3="please enter your choice or 6 to quit: " #prompt for select options
options=("connected hardware" "open ports" "connected users" "status all storage" "all" "quit") #options array

select opt in "${options[@]}"; do #select menu from oprions array
	case $opt in   #cases to call the right function
	"connected hardware")
		hd;
	;;
	"open ports")
		port;
	;;
	"connected users")
		users;
	;;
	"status all storage")
		storage;
	;;
	"all")
		all;
	;;
	"quit")   #quit select mode
		break
	;;
	*) echo "invailid option";;
	esac
done
