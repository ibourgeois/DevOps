#!/bin/bash

# Configure the Firewall
	
# Allow SSH
sudo ufw allow 22/tcp

# Enable the Firewall
sudo ufw enable -y
