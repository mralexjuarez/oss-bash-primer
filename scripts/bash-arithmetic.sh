#!/bin/bash

## Examples of bash arithmetic and increment / decrement operators
    
i=1 ; echo "i="$i # Set i=1

i+=2 ; echo "i="$i # Add 2 to i, i=12
i+=1 ; echo "i="$i # Add 1 to i, i=121

let i+=2 ; echo "i="$i #Increment i by 2, i=123

((i++)) ; echo $i # Post increment by 1

((++i)) ; echo $i # Pre increment by 1
