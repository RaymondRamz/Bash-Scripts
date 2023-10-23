#!/bin/bash

#indicates name and path of the directory
test_directory="/tmp/test"

#creates the directory if it does not exist 
#and does nothing if it does exist
mkdir -p "$test_directory"

#message to include in the files
msg="Hello, world"

#creation of files from message
for i in {1..300}; do
    file_name="$test_directory/file$i.txt"
    echo "$msg" > "$file_name"
done

echo "files created successfully"
