#!/bin/bash
read -p "enter the number to want toss the coin :" num
declare -A Singlet
heads=0
tails=0
for ((i=1;i<=$num;i++))
do
	Flip=$((RANDOM%2))
	case $Flip in
		0) Singlet["H"]=$((++heads))
		;;
		1) Singlet["T"]=$((++tails))
		;;
	esac
done
for index in ${!Singlet[@]}
do
        echo "$index: ${Singlet[$index]},"
done

