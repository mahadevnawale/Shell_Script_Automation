#!/bin/bash
count=5
while [ $count -gt 0 ];
     do
     echo "countdown:$count" 
     ((count--))
     sleep 1
    
done
     
