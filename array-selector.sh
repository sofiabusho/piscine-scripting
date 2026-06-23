#!/bin/bash

array=("red" "blue" "green" "white" "black")

if [[ $# -ne 1 ]] || ! [[ "$1" =~ ^[0-9]+$ ]] || [[ "$1" -lt 1 ]] || [[ "$1" -gt 5 ]]; then
    echo "Error"
    exit 1
fi


if [[ "$1" -eq 1 ]]; then
    echo ${array[0]}
elif [[ "$1" -eq 2 ]]; then
    echo ${array[1]}
elif [[ "$1" -eq 3 ]]; then
    echo ${array[2]}
elif [[ "$1" -eq 4 ]]; then
    echo ${array[3]}
elif [[ "$1" -eq 5 ]]; then
    echo ${array[4]}
fi