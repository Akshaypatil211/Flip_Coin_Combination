#!/bin/bash
read -p "enter the number to want toss the coin :" num
declare -A Singlet
declare -A Doublet
declare -A Triplet
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


#Triplet=(["HHH"]=0 ["HHT"]=0 ["HTH"]=0 ["THH"]=0 ["THT"]=0 ["TTH"]=0 ["HTT"]=0 ["TTT"]=0)
for ((k=1;k<=$num;k++))
do
        flip=$((RANDOM%8))
        case $flip in
                0) y=${Triplet["HHH"]}
                   Triplet["HHH"]=$((++y))
                        ;;
		1) y=${Triplet["HHT"]}
                   Triplet["HHT"]=$((++y))
                        ;;
		2) y=${Triplet["HTH"]}
                   Triplet["HTH"]=$((++y))
                        ;;
		3) y=${Triplet["THH"]}
                   Triplet["THH"]=$((++y))
                        ;;
		4) y=${Triplet["THT"]}
                   Triplet["THT"]=$((++y))
                        ;;
		5) y=${Triplet["TTH"]}
                   Triplet["TTH"]=$((++y))
                        ;;
		6) y=${Triplet["HTT"]}
                   Triplet["HTT"]=$((++y))
                        ;;
		7) y=${Triplet["TTT"]}
                   Triplet["TTT"]=$((++y))
                        ;;

        esac
done
for index in ${!Triplet[@]}
do
	echo "$index: ${Triplet[$index]},"
done
