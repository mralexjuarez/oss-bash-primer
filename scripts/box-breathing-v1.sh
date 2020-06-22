#!/bin/bash

ROUNDS=$1
COUNT="4"

echo "Starting Box breathing for $ROUNDS rounds"

x=1
for i in $(seq $ROUNDS)
do 
   echo "Round $x"
   echo "Inhale for $COUNT seconds"
   sleep $COUNT
   echo "Hold for $COUNT seconds"
   sleep $COUNT
   echo "Exhale for $COUNT seconds"
   sleep $COUNT
   echo "Hold for $COUNT seconds"
   ((x=x+1))
done
