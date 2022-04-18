#!/bin/bash
# Backup cisco
(
sleep 5
echo "username"
sleep 5
echo "password"
sleep 5
echo "wr"
sleep 5
echo "copy startup-config tftp"
sleep 2
echo "ip.adress."
sleep 2
echo "cisco-prostor.cfg"
sleep 2
echo "quit"
sleep 2
echo "quit"
) | telnet ip.address.cisco
mv /home/user/tftp-serv/cisco.cfg /home/user/fullbackupdevices/olt/`date +%Y-%m-%d`_cisco.cfg
