#!/bin/bash

read -p "Write sentence: " sentence

reversed=""

for word in $sentence; do
        reversed="$word $reversed"
done

echo "$reversed"
