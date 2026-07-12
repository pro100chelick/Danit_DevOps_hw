#!/bin/bash

filename="$1"

if [ ! -f "$filename" ]; then
    echo "File '$filename' not found"
    exit 1
fi

if [ ! -r "$filename" ]; then
    echo "File '$filename' exists, but permission denied"
    exit 1
fi

cat "$filename"
