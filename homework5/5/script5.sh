#!/bin/bash

source_file="$1"
destination="$2"

if [ ! -f "$source_file" ]; then
    echo "Failed '$source_file' not found"
    exit 1
fi

cp "$source_file" "$destination"

if [ $? -eq 0 ]; then
    echo "Success file '$source_file' copy to  '$destination'"
else
    echo "Failed file does not copy"
    exit 1
fi
