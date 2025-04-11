#!/bin/bash

if [ $# -eq 0 i]
then
    echo -e "Usage: phone searchfor [¡¦ searchfor]\n(You didn¡¯t tell me what you want to search for.)"
    exit 1
fi

search="$1"
for arg in "$@"
do
    search="${search}|${arg}"
done

egrep -i "$search" data > tmp
awk -f display.awk tmp
