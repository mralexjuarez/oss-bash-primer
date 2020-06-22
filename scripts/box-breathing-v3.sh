#!/bin/bash
## Variables
ROUNDS=$1
COUNT="4"

## Functions
function box_breath {
case $1 in
  Exhale)
    y=$COUNT
    while [ $y -ge 1 ]
    do
      echo -ne "$1 -- $y\r"
      sleep 1.5s
      ((y=y-1))
    done
    ;;
  *)
  y=1
  while [ $y -le $COUNT ]
  do
    echo -ne "$1 -- $y\r"
    sleep 1.5s
    ((y=y+1))
  done
  ;;
esac
}

## Main
if [ -z $1 ]
then
  ROUNDS=1
fi

tput clear
tput civis   
echo "Starting Box breathing for $ROUNDS rounds"
sleep 2.5s
echo "Find a comfortable seat, feet planted on the floor."
sleep 2.5s
echo "Ready..."
sleep 2.5s

x=1
while [ $x -le $ROUNDS ]
do 
   box_breath "Inhale"
   echo -ne "                                \r"
   box_breath "Hold"
   echo -ne "                                \r"
   box_breath "Exhale"
   echo -ne "                                \r"
   box_breath "Hold"
   echo -ne "                                \r"
   ((x=x+1))
done

echo "And that's it."
sleep 2.5s
echo "How do you feel?"
sleep 2.5s

tput cnorm
