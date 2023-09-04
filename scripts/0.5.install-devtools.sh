#/bin/bash

echo "Checking for jq..."
if ! [ -x "$(command -v jq)" ]; then
    echo "jq is not installed. Installing..."
    sudo apt-get install jq
else
    echo "curl is installed."
fi

echo "Checking for curl..."
if ! [ -x "$(command -v curl)" ]; then
    echo "curl is not installed. Installing..."
    sudo apt-get install curl
else
    echo "curl is installed."
fi
