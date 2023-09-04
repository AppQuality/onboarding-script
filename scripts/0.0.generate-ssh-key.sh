#/bin/bash

echo "Checking for ssh-keygen..."
if ! [ -x "$(command -v ssh-keygen)" ]; then
    echo "ssh-keygen is not installed. Installing..."
    sudo apt-get install ssh-keygen
else
    echo "ssh-keygen is installed."
fi

echo "Checking for your ssh key..."
if ! [ -f ~/.ssh/id_rsa.pub ]; then
    echo "ssh key not found. Generating..."
    ssh-keygen 
    echo "ssh key generated."
else
    echo "ssh key found."
fi

./logger.sh "This is your SSH public key:"
cat ~/.ssh/id_rsa.pub

./logger.sh "Please add this key to your GitHub account. https://github.com/settings/keys"
echo "Guide: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account"
echo "Press any key to continue..."
read -n 1 -s
