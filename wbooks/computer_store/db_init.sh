#!/bin/bash
# db_init.sh - Initializes or reinitializes the exercise database.

init_db() {
	echo "Initializing Database:"
	sqlite3 "$name.db" < "$name.sql" -echo
	echo "Done"
}

reinit_db() {
	rm -f "$db"
	init_db
}

name="${PWD##*/}"
usage="Usage: $(basename $0)"
db="$name.db"

loop=1
if [ -a "$db" ] ; then
	while [ "$loop" -eq 1 ] ; do
		read -p "Database $db exists; Do you want to reinitialize? Type Y/n: " answer
		if [ "$answer" == "Y" ] ; then
			reinit_db
			loop=0
		elif [ "$answer" == "n" ] ; then
			loop=0
			echo "You chose not to reinitialize the database."
		else
			echo "Invalid Input. Please enter Y or n."
		fi
	done
else
	init_db
fi
