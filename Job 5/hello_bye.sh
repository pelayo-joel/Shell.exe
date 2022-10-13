#!/bin/bash

BONJOUR="Hello"
BYE="Bye"
if [[ "$1" == $BONJOUR ]]; then
	echo "Bonjour, je suis un script!"
elif [[ "$2" == $BYE ]]; then
	echo "Au revoir et bonne journée"
fi
