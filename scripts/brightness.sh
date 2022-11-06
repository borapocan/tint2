#!/bin/bash

brightness=$(xbacklight -get | cut -d '.' -f 1)

if [[ $brightness -lt 101 ]] && [[ $brightness -gt 51 ]]
then

    echo " "

elif [[ $brightness -lt 51 ]] && [[ $brightness -gt 10 ]]
then

    echo " "

else

    echo " "

fi

