#!/bin/bash

color=("red" "blue" "green" "white" "black")

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


if [[ "$1" -eq 1 ]]; then
    echo ${color[0]}
elif [[ "$1" -eq 2 ]]; then
    echo ${color[1]}
elif [[ "$1" -eq 3 ]]; then
    echo ${color[2]}
elif [[ "$1" -eq 4 ]]; then
    echo ${color[3]}
elif [[ "$1" -eq 5 ]]; then
    echo ${color[4]}
fi