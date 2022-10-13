#!/bin/bash

if [[ "$2" == "+" ]]; then
	echo $(($1 + $3))
elif [[ "$2" == "-" ]]; then
	echo $(($1 - $3))
elif [[ "$2" == "x" ]]; then
	echo $(($1 * $3))
elif [[ "$2" == ":" ]]; then
	echo "scale=2; $1 / $3" | bc
fi
