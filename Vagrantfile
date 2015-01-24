# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	# Set Base Box
    config.vm.box = "ubuntu/trusty64"

    # Set VM Hostname
    config.vm.hostname = "devbox"

    # Set Virtual Machine Name
    config.vm.provider "virtualbox" do |v|
    	v.name = "DevOps"
    	v.memory = 512
  		v.cpus = 1
	end

    # Set IP Address
    config.vm.network :private_network, ip: "192.168.33.10"

    # Configure Port Forwarding
    config.vm.network "forwarded_port", guest: 80, host: 8000
	config.vm.network "forwarded_port", guest: 3306, host: 33060
	config.vm.network "forwarded_port", guest: 5432, host: 54320
	config.vm.network "forwarded_port", guest: 35729, host: 35729

	# Provision Development Environment
	config.vm.provision "shell", path: "provision.sh"
	
end
