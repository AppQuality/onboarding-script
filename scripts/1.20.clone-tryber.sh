#!/bin/bash

# check if folder ~/dev/database exists
if [ -d ~/dev/tryber ]; then
    echo "Tryber folder exists. Skipping..."
else
    mkdir -p ~/dev/tryber
fi

# check if folder ~/dev/tryber/tryber-api exists
if [ -d ~/dev/tryber/tryber-api ]; then
    echo "Tryber API folder exists. Skipping..."
else
    echo "Tryber API folder does not exist. Creating..."
    git clone git@github.com:AppQuality/tyber-api.git ~/dev/tryber/tryber-api
fi

# check if folder ~/dev/tryber/tryber-react exists
if [ -d ~/dev/tryber/tryber-react ]; then
    echo "Tryber React folder exists. Skipping..."
else
    echo "Tryber React folder does not exist. Creating..."
    git clone git@github.com:AppQuality/tyber-react.git ~/dev/tryber/tryber-react
fi

# check if folder ~/dev/tryber/crowd_wp_platform exists
if [ -d ~/dev/tryber/crowd_wp_platform ]; then
    echo "Crowd WP Platform folder exists. Skipping..."
else
    echo "Crowd WP Platform folder does not exist. Creating..."
    git clone git@github.com:AppQuality/crowd_wp_platform.git ~/dev/tryber/crowd_wp_platform
fi

# check if folder ~/dev/tryber/tryber-backoffice exists
if [ -d ~/dev/tryber/tryber-backoffice ]; then
    echo "Tryber Backoffice folder exists. Skipping..."
else
    echo "Tryber Backoffice folder does not exist. Creating..."
    git clone git@github.com:AppQuality/tyber-backoffice.git ~/dev/tryber/tryber-backoffice
fi