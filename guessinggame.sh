#!/bin/bash

function guess(){
    ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "pleas enter your guess"
        read  num
        if [ $num -lt $ans ]
        then
            echo "your guess is Less then the true number"
        elif [ $num -gt $ans ]
        then
            echo "your guess is Greater then the true number"
        else
            echo "Congratulation! you are right."
        break;
        fi
    done
}
echo "Guess! how many files are in the current directory?"
guess
