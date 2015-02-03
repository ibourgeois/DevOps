#!/bin/bash

# Create New User
adduser $userName

# Give New User Sudo Rights
gpasswd -a $userName sudo

# Switch to New User
su - $userName

	# Create .ssh Directory
	mkdir .ssh
	chmod 700 .ssh

	# Install SSH Keys
	echo $sshKey > ~/.ssh/authorized_keys

	# Restrict Access to Keys
	chmod 600 .ssh/authorized_keys

	# Return to Root
	exit

# Disable Root SSH Login
sudo sed -i "s|PermitRootLogin yes|PermitRootLogin no|" /etc/ssh/sshd_config
service ssh restart
