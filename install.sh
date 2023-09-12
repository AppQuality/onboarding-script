#!/bin/bash
set -e

# Ask for the administrator password upfront and exit if not received
sudo -v
IS_SUDO=$?
if [ $IS_SUDO -ne 0 ]; then
    ./logger.sh "ERROR: Please run this script with sudo."
    exit 1
fi

# Exit if not running Ubuntu
if ! [ -x "$(command -v lsb_release)" ]; then
    ./logger.sh "ERROR: This script is only supported on Ubuntu."
    exit 1
fi


for file in scripts/*.sh; do
    echo "Running $file"
    bash "$file"
done
