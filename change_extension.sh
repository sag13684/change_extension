#!/bin/bash
echo "Existing Extension" $1
echo "Converted Extension" $2
for file in $(find . -type f -name "*$1")
do
        mv "${file}" "${file/$1/$2}"
        echo " -- Fixing $file with ${file/$1/$2}"
done

