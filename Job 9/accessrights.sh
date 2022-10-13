#!/bin/bash

sed 1d Shell_Userlist.csv | while IFS="," read -r rec_column1 rec_column2 rec_column3 rec_column4 rec_column5
do
	username=$(echo $rec_column2$rec_column3 | tr -d '[:space:]')
	sudo useradd $username
	echo -e "$rec_column4" | sudo passwd $username
	if [[ $rec_column5 == A* ]]; then
		sudo usermod -aG sudo $username
	fi
done
clear
