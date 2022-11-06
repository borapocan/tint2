#!/bin/bash


vol=$(pamixer --get-volume)

if [[ $vol -eq 100 ]] 
then

    echo "🔊"

elif [[ $vol -lt 100 ]] && [[ $vol -gt 51 ]]
then

    echo "🔈"
   

elif [[ $vol -lt 51 ]] && [[ $vol -gt 0 ]]
then

    echo "🔈"
    

else

    echo " "
    

fi
