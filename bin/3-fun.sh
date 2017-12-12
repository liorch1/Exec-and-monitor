#!/bin/bash

#name: lior cohen
#date: 12/12/2017
#homwork: 3. create a script in bin, that will have a functions:
#	a. to see all connected hardware.
#	b. to show all opened ports.
#	c. to show all connected users.
#	d. to show status all storage. 
#	e. to run all functions and save output in logs.


hd() {     #connected hardware
	lshw;
}

ports() {  
	netstat -tulpn;
}

users() {   #connected users
	w;
}

storage() { #storage status
	df
}

all() { #all of the function above
	hd;
	ports;
	users;
	storage; 
}
