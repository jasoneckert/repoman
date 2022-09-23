#!/bin/bash
#This script backs up a directory of your choice

if [ ! -d /backups ]
then
	mkdir /backups
fi

echo -e "What directory do you want to back up?--->\c" 
read ANS

echo "Performing the backup..."
sleep 3
tar -zcvf /backups/backup-$(date +%F).tar.gz $ANS

echo "Backup completed successfully to /backups/backup-$(date +%F).tar.gz"
