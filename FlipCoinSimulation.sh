#!/bin/bash -x
echo " Welcome to  FilpCoin Simulation "
echo "Enter the fliping coin"
read number
# REMODIFIED PREVIOUS PROGRAM BY USING DICTIONARY
declare -A Singlet
#INITIALISING  THE VARIABLES  
HH=0
TT=0
HT=0
TH=0
#BY USING  FOR LOOP  WE CAN TAKE NUMBER OF LOOPING AS WE WANT
for ((count=1; count<=$number; count++ ))
do
#RANDOM FUNCTION IS USE TO TOSS  AND STORED IN VARIABLE
randomvalue=$((RANDOM%4+1))
#SWITCH CASE IS USED  FOR THE POSSIBILITIES 
case $randomvalue in
			1)
   		 	Doublet[$count]="Head Head"
				HH=$((HH+1))
				;;
			2)
   			Doublet[$count]="Tail Tail"
				TT=$((TT+1))
				;;
			3)
            Doublet[$count]="Head Tail"
            HT=$((HT+1))
            ;;
			4)
            Doublet[$count]="Tail Head"
            TH=$((TH+1))
            ;;

esac
done
#PRINTING  KEY AND VALUES BY USING DICTONARY
echo  " Singlet key and values result :${!Singlet[@]} :${Singlet[@]} "
PercentOfHH=`echo "(($HH/4))" | bc -l`
PercentOfTT=`echo "(($TT/4))" | bc -l`
PercentOfHT=`echo "(($HT/4))" | bc -l`
PercentOfTH=`echo "(($TH/4))" | bc -l`
#FINDING THE PERCENTAGE OF ALL THE POSSIBLITIES
echo "Percentage of Head Head : $PercentOfHH"
echo "Percentage of Tail Tail : $PercentOfTT"
echo "Percentage of Head Tail : $PercentOfHT"
echo "Percentage of Tail Head : $PercentOfTH"
