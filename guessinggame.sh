#!/bin/bash

# Get the actual number of files in the current directory
actual_files=$(ls -1 | wc -l)

while true; do
    read -p "Guess the number of files in the current directory: " user_guess

    if [[ $user_guess -eq $actual_files ]]; then
        echo "Congratulations! You guessed correctly."
        break
    elif [[ $user_guess -lt $actual_files ]]; then
        echo "Too low! Try again."
    else
        echo "Too high! Try again."
    fi
done
