#!/bin/bash
secret=$1

if [[ $# -ne 1 ]]; then
    echo "Error: wrong argument"
    exit 1
fi

if ! [[ "$secret" =~ ^[0-9]+$ ]] || [[ $secret -lt 1 ]] || [[ $secret -gt 100 ]]; then
    echo "Error: wrong argument"
    exit 1
fi

moves=0

for ((attempt = 1; attempt <= 5; attempt++)); do
    tries_left=$((6 - attempt))
    
    while true; do
        echo "Enter your guess ($tries_left tries left):"
        read guess
        if [[ -z "$guess" ]] || ! [[ "$guess" =~ ^[0-9]+$ ]] \
            || [[ $guess -lt 1 ]] || [[ $guess -gt 100 ]]; then
            continue
        fi
        break
    done
    ((moves++))
    if [[ $guess -eq $secret ]]; then
        echo "Congratulations, you found the number in $moves moves!"
        exit 0
    elif [[ $guess -gt $secret ]]; then
        echo "Go down"
    else
        echo "Go up"
    fi
done
echo "You lost, the number was $secret"