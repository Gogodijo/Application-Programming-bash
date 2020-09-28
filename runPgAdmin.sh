#!/bin/bash
FILE=/home/ap/pgAdmin4/pgAdmin4/pgadmin4-4.20
COMMAND=PATH=$PATH:/home/ap/Application-Programming-bash
DIR=/home/ap/.bashrc
source /home/ap/pgAdmin4/pgAdmin4/bin/activate
if test -d "$FILE"; then
	echo "Already unpacked."
else 
	wheel unpack /home/ap/pgAdmin4/pgAdmin4/pgadmin4-4.20-py2.py3-none-any.whl -d /home/ap/pgAdmin4/pgAdmin4/
	sudo chmod 777 /var/lib/
	sudo chmod 777 /var/log/
	echo $COMMAND >> $DIR
	echo "Added runPgAdmin.sh to PATH. You can now start this script from any directory =)"
	echo "---"
	echo "You need to restart terminal to run it from any directory."

fi

python /home/ap/pgAdmin4/pgAdmin4/pgadmin4-4.20/pgadmin4/pgAdmin4.py
