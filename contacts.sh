#!/bin/bash
#This creates or views contacts
while true
do
clear
echo -e "What do you want to do?\n
C = Create new contact
D = Delete a contact
S = Search for a contact
V = View all contacts
Q = Quit

Enter your choice -->\c"
read CHOICE
case $CHOICE in
	c | C ) echo -e "What is the contact name?-->\c"
		read NAME
		echo -e "What is the contact phone?-->\c"
		read PHONE
		echo -e "What is the contact email?-->\c"
		read EMAIL
		echo -e "$NAME\t$PHONE\t$EMAIL" >>~/.contacts
		;;
	d | D ) echo -e "What is the contact name to delete?-->\c"
		read DELETENAME
		grep -v $DELETENAME ~/.contacts >>/tmp/$$
		cp -f /tmp/$$ ~/.contacts
		;;
	s | S ) echo -e "Enter a search string -->\c"
		read SEARCHSTRING
		grep -i $SEARCHSTRING ~/.contacts
		read DUMMY
		;;
	v | V ) less ~/.contacts
		;;
	q | Q ) exit 0
		;;
	* ) echo "You have to type either C, D, S, V, or Q!"
	    sleep 3
	    ;;
esac

done
