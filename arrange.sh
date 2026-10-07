#!/bin/bash

cd files

for file in *; do
    # Get first char of the file's name
    first_char="${file:0:1}" # THERE CAN'T BE SPACE AROUND THE '='
    # Set it lowercase
    first_char="${first_char,,}"

    # Go back to parent directory, search through the folders and move the file
    cd ..
    for folder in *; do
        if [[ "$first_char" == "$folder" ]]; then
            mv "files/$file" "$folder"
        fi
    done
    
    #back to file dirr
    cd files

done