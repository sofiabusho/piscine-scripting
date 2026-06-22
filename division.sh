#!/bin/bash
# 1. Argument count
if [[ $# -lt 2 ]]; then
    echo "Error: two numbers must be provided"
    exit 0
fi
# 2. Both must be integers (optional minus sign, digits only)
if ! [[ "$1" =~ ^-?[0-9]+$ ]] || ! [[ "$2" =~ ^-?[0-9]+$ ]]; then
    echo "Error: both arguments must be integers"
    exit 0
fi
# 3. Division by zero
if [[ "$2" -eq 0 ]]; then
    echo "Error: division by zero is not allowed"
    exit 0
fi
# 4. Divide with bc (handles large integers)
echo "$1 / $2" | bc