#!/bin/bash
FILE=/home/ap/pgAdmin4/pgAdmin4/pgadmin4-4.20
if test -d "$FILE"; then
	echo "Already unpacked."
else 
	wheel unpack /home/ap/pgAdmin4/pgAdmin4/pgadmin4-4.20-py2.py3-none-any.whl -d /home/ap/pgAdmin4/pgAdmin4/
	sudo chmod 777 /var/lib/
fi
source /home/ap/pgAdmin4/pgAdmin4/bin/activate
python /home/ap/pgAdmin4/pgAdmin4/pgadmin4-4.20/pgadmin4/pgAdmin4.py
