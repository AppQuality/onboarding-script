#!/bin/bash

# check if folder ~/dev/database exists
if [ -d ~/dev/unguess ]; then
    echo "Unguess folder exists. Skipping..."
else
    mkdir -p ~/dev/unguess
fi

# check if folder ~/dev/unguess/unguess-api exists
if [ -d ~/dev/unguess/unguess-api ]; then
    echo "Unguess API folder exists. Skipping..."
else
    echo "Unguess API folder does not exist. Creating..."
    git clone git@github.com:AppQuality/unguess-api.git ~/dev/unguess/unguess-api
fi

# check if folder ~/dev/unguess/unguess-react exists
if [ -d ~/dev/unguess/unguess-react ]; then
    echo "unguess React folder exists. Skipping..."
else
    echo "Unguess React folder does not exist. Creating..."
    git clone git@github.com:AppQuality/unguess-react.git ~/dev/unguess/unguess-react
fi

# check if folder ~/dev/unguess/unguess_wp_infrastructure exists
if [ -d ~/dev/unguess/unguess_wp_infrastructure ]; then
    echo "Crowd WP Platform folder exists. Skipping..."
else
    echo "Crowd WP Platform folder does not exist. Creating..."
    git clone git@github.com:AppQuality/unguess_wp_infrastructure.git ~/dev/unguess/unguess_wp_infrastructure
fi
