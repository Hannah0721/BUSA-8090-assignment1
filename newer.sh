#!/bin/bash
latest=$(ls -t | head -1)

unset -v latest
for file in "$@"; do
   [[ $file -nt $latest ]] && latest=$file
done
echo "$file"

