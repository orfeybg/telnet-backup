#!/bin/bash
# Backup devices

./cisco.sh &
wait
./tp-link.sh &
wait
echo "ALL OLT IS BACKUPED"
