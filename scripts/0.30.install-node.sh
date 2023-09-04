#/bin/bash

NODE_VERSION=16

echo "Checking for curl..."
if ! [ -x "$(command -v curl)" ]; then
    echo "curl is not installed. Installing..."
    sudo apt-get install curl
else
    echo "curl is installed."
fi

echo "Checking for nvm..."
if ! [ -z "$(nvm -v 2>/dev/null)" ]; then
    echo "nvm is not installed. Installing..."
    curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
else
    echo "nvm is installed."
fi

echo "Checking for node..."
if ! [ -x "$(command -v node)" ]; then
    echo "node is not installed. Installing..."
    nvm install $NODE_VERSION
else
    echo "node is installed."
fi

echo "Checking for yarn..."
if ! [ -x "$(command -v yarn)" ]; then
    echo "yarn is not installed. Installing..."
    npm install -g yarn
else
    echo "yarn is installed."
fi
