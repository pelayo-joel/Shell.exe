#!/bin/bash

file=number_connections_$(date +%d-%m-%Y-'%H:%M')
cat /var/log/auth.log | grep $USER | wc -l > $file
tar -cvf ./$file.tar ./ && mv $file.tar Backup
