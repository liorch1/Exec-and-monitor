#!/bin/bash

# name : lior cohen
# date : 12/12/2017
# homework : 

if [ -e /var/log/script ]; then
	echo "";
else
	echo "logs folder not found, create one";
	sudo mkdir /var/log/script ;
fi

pid=$(pgrep 2-root-pro.sh)

if [[ -n $pid ]]; then
	kill -s 19 $pid
	echo "$(date) -  1-root-pro.sh ($pid) script has stoped"
else
	echo "Process not found"
fi | tee -a /var/log/script/log1
