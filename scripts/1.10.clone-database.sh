#!/bin/bash

# check if folder ~/dev/database exists
if [ -d ~/dev/database ]; then
    echo "Database folder exists. Skipping..."
else
    echo "Database folder does not exist. Creating..."
    git clone git@github.com:AppQuality/database.git ~/dev/database
fi