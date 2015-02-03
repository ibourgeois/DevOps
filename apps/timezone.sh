#!/bin/bash

# Configure the Timezone
sudo echo $timeZone > /etc/timezone 
sudo dpkg-reconfigure -f noninteractive tzdata

# Install NTP
sudo apt-get install ntp
