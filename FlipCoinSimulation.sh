#!/bin/bash -x
echo " Welcome to  FilpCoin Simulation " 
randomvalue=$((RANDOM%2))
if(( $randomvalue == 0 ))
then
   echo "     Head     "
else
   echo "     Tail     "
fi
