#!/bin/bash
NODE_VERSION=16

echo "Checking for nvm..."
if ! [ -x "$(command -v nvm)" ]; then
    echo "nvm is not installed. Installing..."
    curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
    source ~/.nvm/nvm.sh
else
    echo "nvm is installed."
fi

echo "Checking for node..."
if ! [ -x "$(command -v node)" ]; then
    echo "node is not installed. Installing..."
    source ~/.nvm/nvm.sh
    nvm install $NODE_VERSION
else
    echo "node is installed."
fi

echo "Checking for npm..."
if ! [ -x "$(command -v npm)" ]; then
    echo "npm is not installed. Installing..."
    source ~/.nvm/nvm.sh
    nvm install $NODE_VERSION
else
    echo "npm is installed."
fi

echo "Checking for yarn..."
if ! [ -x "$(command -v yarn)" ]; then
    echo "yarn is not installed. Installing..."
    npm install -g yarn
else
    echo "yarn is installed."
fi
