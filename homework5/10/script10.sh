#!/bin/bash

# Визначаємо шлях до директорії
WATCH_DIR="$HOME/watch"

found_files=false

for full_path in "$WATCH_DIR"/*; do
    
    if [ -f "$full_path" ] && [[ "$full_path" != *.back ]]; then
        
        found_files=true
        filename=$(basename "$full_path")
        
        echo "Finde new file  $filename"
        echo "File content:"
        
        cat "$full_path"
        
        mv "$full_path" "$full_path.back"
        echo "File rename $filename.back"
    fi
done

if [ "$found_files" = false ]; then
    echo "New files not found"
fi
