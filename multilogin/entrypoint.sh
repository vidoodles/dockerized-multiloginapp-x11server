#!/bin/sh

# Change to the directory where the scripts are located to run headless
cd /opt/Multilogin/headless/

# Run the login script with the correct username and password
./cli.sh -login -u $MULTILOGIN_USER -p $MULTILOGIN_PASSWORD

# Run the headless script on port 35000
./headless.sh -port 35000 &