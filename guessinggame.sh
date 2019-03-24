#!/usr/bin/env bash

function guessCount(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "please enter your guess"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Your guess is Less then the true number, please enter a higher number!"
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is greater then the true number, please enter a lower number!"
        else
            echo "Congratulations!!!! you are right!"
        break;
        fi
    done
}
echo "Guess the number of files in the current directory!"
guessCount
