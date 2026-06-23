#!/bin/bash

array=("red" "blue" "green" "white" "black")

if [[ $# -ne 1 ]]; then
    echo "Error"
    exit 1
fi
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Error"
    exit 1
fi
if [[ "$1" -lt 1 ]] || [[ "$1" -gt 5 ]]; then
    echo "Error"
    exit 1
fi

index=$(( $1 - 1 ))
echo "${array[$index]}"