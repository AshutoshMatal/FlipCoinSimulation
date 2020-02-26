#!/bin/bash -x
echo " Welcome to  FilpCoin Simulation "
echo "Enter the fliping coin"
read number
declare -A Singlet 
Head=0
Tail=0
for ((count=1; count<=$number; count++ ))
do
randomvalue=$((RANDOM%2+1))
case $randomvalue in
			1)
   		 	Singlet[$count]="Head"
				Head=$((Head+1))
				;;
			2)
   			Singlet[$count]="Tail"
				Tail=$((Tail+1))
				;;
esac
done
echo  " Singlet key and values result :${!Singlet[@]} :${Singlet[@]} "
PercentOfHead=`echo "(($Head/2))" | bc -l`
PercentOfTail=`echo "(($Tail/2))" | bc -l`
echo "$PercentOfHead"
echo "$PercentOfTail"
