#!/bin/bash -x
echo " Welcome to  FilpCoin Simulation "
function Single()
{
echo "Enter the fliping coin"
read number
declare -A Singlet 
Head=0
Tail=0
temp=$number
for ((count=1; count<=$number; count++ ))
do
randomvalue=$((RANDOM%2+1))
case $randomvalue in
			1)
				H=$(($H+1))
   		 	Singlet["H"]="$H"
				;;
			2)
				T=$(($T+1))
   			Singlet["T"]="$T"
				;;
esac
done
echo  " Singlet key and values result :${!Singlet[@]} :${Singlet[@]} "
PercentOfHead=`echo "(($H/$temp * 100))" | bc -l`
PercentOfTail=`echo "(($T/$temp * 100))" | bc -l`
echo "Percentage of Head :$PercentOfHead"
echo "Percentage of Tail :$PercentOfTail"
for value in ${!Singlet[@]}
do
      echo "$value : ${Singlet[$value]}"
done
#  THIS FOR LOOP IS USED FOR SORTING 
for i in ${!Singlet[@]}
do
	 echo " $i ${Singlet[$i]}"
done | sort -k2 -rn 
}
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
function double()
{
echo "Enter the fliping coin"
read number
# REMODIFIED PREVIOUS PROGRAM BY USING DICTIONARY
declare -A Doublet
#INITIALISING  THE VARIABLES  
HH=0
TT=0
HT=0
TH=0
temp=$number
#BY USING  FOR LOOP  WE CAN TAKE NUMBER OF LOOPING AS WE WANT
for ((count=1; count<=$number; count++ ))
do
#RANDOM FUNCTION IS USE TO TOSS  AND STORED IN VARIABLE
randomvalue=$((RANDOM%4+1))
#SWITCH CASE IS USED  FOR THE POSSIBILITIES 
case $randomvalue in
			1)
				HH=$(($HH+1))
   		 	Doublet["HH"]="$HH"
				;;
			2)
				TT=$(($TT+1))
   			Doublet["TT"]="$TT"
				;;
			3)
				HT=$(($HT+1))
            Doublet["HT"]="$HT"
            ;;
			4)
				TH=$(($TH+1))
            Doublet["TH"]="$TH"
            ;;

esac
done
#PRINTING  KEY AND VALUES BY USING DICTONARY
echo  " Doublet key and values result :${!Doublet[@]} :${Doublet[@]} "
PercentOfHH=`echo "(($HH/$temp * 100))" | bc -l`
PercentOfTT=`echo "(($TT/$temp * 100))" | bc -l`
PercentOfHT=`echo "(($HT/$temp * 100))" | bc -l`
PercentOfTH=`echo "(($TH/$temp * 100))" | bc -l`
#FINDING THE PERCENTAGE OF ALL THE POSSIBLITIES
echo "Percentage of Head Head : $PercentOfHH"
echo "Percentage of Tail Tail : $PercentOfTT"
echo "Percentage of Head Tail : $PercentOfHT"
echo "Percentage of Tail Head : $PercentOfTH"
for value in ${!Doublet[@]}
do
      echo "$value : ${Doublet[$value]}"
done
for i in "${!Doublet[@]}"
do
   echo "$i  ${Doublet[$i]}"
done | sort -k2 -rn

}

echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
function Triple()
{
echo "Enter the fliping coin"
read number
# REMODIFIED PREVIOUS PROGRAM BY USING DICTIONARY
declare -A  Triplet
#INITIALISING  THE VARIABLES  
HHH=0
TTH=0
HTH=0
HHT=0
THH=0
TTT=0
HTT=0
THT=0
temp=$number
#BY USING  FOR LOOP  WE CAN TAKE NUMBER OF LOOPING AS WE WANT
for ((count=1; count<=$number; count++ ))
do
#RANDOM FUNCTION IS USE TO TOSS  AND STORED IN VARIABLE
randomvalue=$((RANDOM%8+1))
#SWITCH CASE IS USED  FOR THE POSSIBILITIES 
case $randomvalue in
			1)
				HHH=$(($HHH+1))
   		 	Triplet["HHH"]="$HHH"
				;;
			2) 
				TTH=$(($TTH+1))
   			Triplet["TTH"]="$TTH"
				;;
			3)
				HTH=$(($HTH+1))
            Triplet["HTH"]="$HTH"
            ;;
			4)
				HHT=$(($HHT+1))
            Triplet["HHT"]="$HHT"
            ;;
			5)
				THH=$(($THH+1))
            Triplet["THH"]="$THH"
            ;;
         6)
				TTT=$(($TTT+1))
            Triplet["TTT"]="$TTT"
            ;;
         7)
				HTT=$(($HTT+1))
            Triplet["HTT"]="$HTT"
            ;;
         8)
				THT=$(($THT+1))
            Triplet["THT"]="$THT"
            ;;
esac
done
#PRINTING  KEY AND VALUES BY USING DICTONARY
echo  " Triplet key and values result :${!Triplet[@]} :${Triplet[@]} "
PercentOfHHH=`echo "(($HHH/$temp *100))" | bc -l`
PercentOfTTH=`echo "(($TTH/$temp *100))" | bc -l`
PercentOfHTH=`echo "(($HTH/$temp *100))" | bc -l`
PercentOfHHT=`echo "(($HHT/$temp *100))" | bc -l`
PercentOfTHH=`echo "(($THH/$temp *100))" | bc -l`
PercentOfTTT=`echo "(($TTT/$temp *100))" | bc -l`
PercentOfHTT=`echo "(($HTT/$temp *100))" | bc -l`
PercentOfTHT=`echo "(($THT/$temp *100))" | bc -l`

#FINDING THE PERCENTAGE OF ALL THE POSSIBLITIES
echo "Percentage of Head Head Head : $PercentOfHHH"
echo "Percentage of Tail Tail Head : $PercentOfTTH"
echo "Percentage of Head Tail Head : $PercentOfHTH"
echo "Percentage of Head Head Tail : $PercentOfHHT"
echo "Percentage of Tail Head Head : $PercentOfTHH"
echo "Percentage of Tail Tail Tail : $PercentOfTTT"
echo "Percentage of Head Tail Tail : $PercentOfHTT"
echo "Percentage of Tail Head Tail : $PercentOfTHT"
# BY USING FOR LOOP WE  ARE  DISPLAYING THE  KEY AND VALUE FOR THE  NUMBER OF INPUT THAT USER HAS GIVEN 
for value in ${!Triplet[@]}
do
		echo "$value : ${Triplet[$value]}"
done
for i in "${!Triplet[@]}"
do
   echo $i  "${Triplet["$i"]}"
done | sort -k2 -rn 

}
echo "*********************************************************************************************************"
echo "Enter the choice (1-2-3)"
read random
case $random in
			1)
				result="$(Single)"
				;;
			2)
				result="$(double)"
				;;
			3)
				result="$(Triple)"
				;;
esac

