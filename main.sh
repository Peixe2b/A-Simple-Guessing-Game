#!/bin/bash

echo " -- Start -- "

number=$(($RANDOM % 20 + 1))
guess=0
n=0

while [ $guess -ne $number ]; do
	read guess

	[ $guess -lt 1 ] && echo "Low"
	[ $guess -gt 20 ] && echo "High"
	((n++))
	[ $n -ge 5 ] && echo "Game Over | $number" && break
	echo
done

echo " -- End -- "
