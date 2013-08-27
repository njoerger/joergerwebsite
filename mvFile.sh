#!/bin/bash
#cp files and folders to www dir

if [ $1 -eq "0" ] ; then
	echo "moving there"
	sudo cp -upr js /var/www/
	sudo cp -upr css /var/www/
	sudo cp -upr fonts /var/www/

	sudo cp -up *.php /var/www/
	sudo cp -up *.html /var/www/

	firefox -new-window 127.0.0.1
elif [ $1 -eq "1" ] ; then
	echo "moving back"
	sudo cp -upr /var/www/* ~/Github/joergerwebsite/
fi

exit 0
