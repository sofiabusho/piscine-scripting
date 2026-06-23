#!/bin/bash
colors=(red blue green white black)
if [[ $# -ne 1 ]]; then
    echo "Error"
    exit 0
fi
if ! [[ $1 =~ ^[0-9]+$ ]]; then
    echo "Error"
    exit 0
fi
if [[ $1 -lt 1 ]] || [[  $1 -gt ${#colors[@]}  ]]; then
    echo "Error"
    exit 0
fi
index=$(( $1 - 1 ))
echo "${colors[$index]}"