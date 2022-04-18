#!/bin/bash

DATE=$(date +%Y%m%d-%H%M%S)

cp -RT /home/user/fullbackupdevices/olt /home/user/fullbackupdevices/send/
wait
tar cvzf /home/user/fullbackupdevices/send/$DATE-Backup.tar.gz  /home/user/fullbackupdevices/send/
wait
echo "Full backups" | mutt -a "/home/user/fullbackupdevices/send/$DATE-Backup.tar.gz" -s "Date of backup is '$date'" -- you@email.com
sleep 60
rm /home/user/fullbackupdevices/send/*
wait
cp /home/user/fullbackupdevices/olt/* /home/user/fullbackupdevices/backups/
wait
rm /home/user/fullbackupdevices/olt/*
