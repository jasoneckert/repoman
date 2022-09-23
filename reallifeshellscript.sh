#!/bin/bash
tar -zcvf /backups/oracledb.tar.gz /oracle
tar -zcvf /backups/data.tar.gz /data
tar -zcvf /backups/home.tar.gz /home
tar -zcvf /backups/etc.tar.gz /etc
rm -Rf /tmp/*
systemctl restart cups
echo "Script ran successfully at $(date +%F)">>/var/log/script.log

