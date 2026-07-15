#!/bin/bash

number=$(( RANDOM % 100 + 1 ))
max_attempts=5

echo "Guess a number from 1 to 100, you have $max_attempts attempts "

for (( i=1; i<=max_attempts; i++ )); do
    read -p "Attempt $i: " guess

    if [[ $guess -eq $number ]]; then
        echo "Congratulations! You guessed the right number"
        exit 0
    elif [[ $guess -gt $number ]]; then
        echo "Too high"
    else
        echo "Too low"
    fi
done

echo "Sorry, you've run out of attempts. The correct number was  $number"
