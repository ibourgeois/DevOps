#!/bin/bash

# Configure the Firewall
	
# Allow SSH
sudo ufw allow 22/tcp
	
# Allow HTTP
sudo ufw allow 80/tcp
	
# Allow HTTPS
sudo ufw allow 443/tcp

# Enable the Firewall
sudo ufw enable -y
