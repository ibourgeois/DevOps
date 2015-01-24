#!/usr/bin/env bash

echo "============================================================"
echo "Updating Ubuntu"
echo "============================================================"

# Update Ubuntu Server
sudo apt-get update
sudo apt-get upgrade -y

echo "============================================================"
echo "Installing Apache"
echo "============================================================"

# Install Apache2
sudo apt-get install -y apache2
sudo apt-get install -y apache2-utils
