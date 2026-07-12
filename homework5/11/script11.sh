#!/bin/bash

WATCH_DIR="$HOME/watch"

while true; do
    
    for full_path in "$WATCH_DIR"/*; do
        if [ -f "$full_path" ] && [[ "$full_path" != *.back ]]; then
            filename=$(basename "$full_path")
            
            echo "Finde new file  $filename"
            echo "File content:"
            
            cat "$full_path"
            
            mv "$full_path" "$full_path.back"
            echo "File rename $filename.back"
        fi
    done
    
    sleep 2
    
done
