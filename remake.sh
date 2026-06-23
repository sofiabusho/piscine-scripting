#!/bin/bash
if [[ $# -ne 1 ]] || [[ ! -d "$1" ]]; then
    echo "Error"
    exit 1
fi

cd $1 
touch "$dir/ciao"
chmod 442 "$dir/ciao"
touch -t 01010001 "$dir/ciao"
mkdir "$dir/mamma"
chmod 777 "$dir/mamma"
touch -t 01020001 "$dir/mamma"
touch "$dir/guarda"
chmod 400 "$dir/guarda"
touch -t 01030001 "$dir/guarda"
touch "$dir/come"
chmod 642 "$dir/come"
touch -t 01040001 "$dir/come"
mkrir "$dir/mi"
chmod 452 "$dir/mi"
touch -t 01050001 "$dir/mi"
touch "$dir/diverto" 
chmod 421 "$dir/diverto"
touch -t 01060001 "$dir/diverto"