#!/bin/bash

function guess
{
    local number=$1
    while true; do
        echo "Enter the number and press enter:"
        local input
        read input

        if [ $input -gt $number ]; then
            echo "Your estimate is too high."
        elif [ $input -lt $number ]; then
            echo "Your estimate is too low."
        else
            echo "Congrads! $number is the number!"
            break
        fi
    done
}

echo "How many files are in the current directory?"
guess $( ls -l | grep ^- | wc -l )
