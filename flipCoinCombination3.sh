#!/bin/bash
read -p "enter the number to want toss the coin :" num
declare -A Singlet
declare -A Doublet

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

#Doublet=(["HH"]=0 ["HT"]=0 ["TH"]=0 ["TT"]=0)
for ((j=1;j<=$num;j++))
do
        flip=$((RANDOM%4))
        case $flip in
                0) x=${Doublet["HH"]}
		   Doublet["HH"]=$((++x))
                	;;
                1)  x=${Doublet["HT"]}
                   Doublet["HT"]=$((++x))
                        ;;
		2) x=${Doublet["TH"]}
                   Doublet["TH"]=$((++x))
                        ;;
                3) x=${Doublet["TT"]}
                   Doublet["TT"]=$((++x))
                        ;;
        esac
done
for index in ${!Doublet[@]}
do
        echo "$index: ${Doublet[$index]},"
done

