#!/bin/bash
ROUNDS=$1
COUNT="4"

echo "Starting Box breathing for $ROUNDS rounds"

function box_side {
y=1
while [ $y -le $COUNT ]
do
  echo -ne "$1 for a count of $y\r"
  sleep 1.5s
  ((y=y+1))
done
echo "$1 for a count of 4"
}

x=1
while [ $x -le $ROUNDS ]
do 
   tput clear
   tput civis   
   echo "Round $x"
 
   box_side "Inhale"
   echo -ne "                                \r"
   box_side "Hold"
   echo -ne "                                \r"
   box_side "Exhale"
   echo -ne "                                \r"
   box_side "Hold"
   echo -ne "                                \r"
   
   ((x=x+1))
done

echo "And you are done!"

tput cnorm
