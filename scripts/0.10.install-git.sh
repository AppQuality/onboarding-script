#/bin/bash

echo "Checking for git..."
if ! [ -x "$(command -v git)" ]; then
    echo "git is not installed. Installing..."
    sudo apt-get install git
else
    echo "git is installed."
fi

echo "Checking for your git username..."
if ! [ -f ~/.gitconfig ]; then
    echo "git username not found. Setting..."
    read -p "Enter your git username: " username
    git config --global user.name "$username"
    read -p "Enter your git email: " email
    git config --global user.email "$email"
    echo "git username set."
else
    echo "git username found."
fi


if [ -z "$(git ls-remote git@github.com:AppQuality/crowd_wp_platformasd.git 2>/dev/null)" ]; then
    ./logger.sh "SSH key not found on GitHub. Run again this script and add your SSH key to GitHub."
    exit 1
else
    echo "SSH key found on GitHub."
fi