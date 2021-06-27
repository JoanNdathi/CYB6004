#!/bin/bash

#grep statements to search work for different patterns:
echo "using sed"
grep -r sed --exclude-dir=.git
echo "\n\n\n"

echo "using ^m"
grep -r "^m" --exclude-dir=.git
echo "\n\n\n"

echo "check for three words"
grep -P -r '\d{3}' --exclude-dir=.git
echo "\n\n\n"

