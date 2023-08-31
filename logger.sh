#/bin/bash

# Get length of $1
STRLEN=${#1}

# Print top border
for (( i=0; i<$STRLEN+4; i++ )); do
    echo -n "-"
done

echo
echo "  "$1

for (( i=0; i<$STRLEN+4; i++ )); do
    echo -n "-"
done

echo