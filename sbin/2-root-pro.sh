#!/bin/bash

#name: lior cohen
#date : 12/12/2017
#homework:

if [ -e /var/log/script ]; then
        echo "log - $(date)" | tee -a /var/log/script/log2-root
else
        echo "logs folder not found, create one";
        sudo mkdir /var/log/script ;
fi

pros=$(ps -u root uh | awk -F " " '{print $2}')

for i in $pros ; do
	echo $(ps uh $i) ; sleep 0.4 ;
done | tee -a /var/log/script/log2-root
