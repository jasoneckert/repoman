#!/bin/bash
#This script backs up a directory that you specify as the first argument

if [ ! -d /backups ]
then
	mkdir /backups
fi

if [ $# -ne 1 ]
then
	echo "The use of this script is $0 <directory>"
	exit 255
fi

echo "Performing the backup..."
sleep 3
FILE=$(echo $1 | sed s#/#_#g)
tar -zcvf /backups/backup-$FILE-$(date +%F).tar.gz $1

echo "Backup completed successfully to /backups/backup-$FILE-$(date +%F).tar.gz"
