# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.box = "hashicorp/precise64"

	# Port for NodeJS
	config.vm.network "forwarded_port", guest: 3000, host: 3000
	# The default port for mongod and mongos instances. You can change this port with port or --port.
	config.vm.network "forwarded_port", guest: 27017, host: 27017
	# The default port when running with --shardsvr runtime operation or the shardsvr value for the clusterRole setting in a configuration file.
	#config.vm.network "forwarded_port", guest: 27018, host: 27018
	# The default port when running with --configsvr runtime operation or the configsvr value for the clusterRole setting in a configuration file.
	#config.vm.network "forwarded_port", guest: 27019, host: 27019

	config.vm.provision :shell, :path => "provision/01_bootstrap.sh"
	config.vm.provision :shell, :path => "provision/02_pre-install-nvm.sh"
	config.vm.provision :shell, :path => "provision/03_user-install-nvm.sh", :args => "v0.13.1", :privileged => false
	config.vm.provision :shell, :path => "provision/04_user-install-node.sh", :args => "0.11.13 express express-generator bower", :privileged => false
	config.vm.provision :shell, :path => "provision/05_install-mongodb.sh"
	config.vm.provision :shell, :path => "provision/06_user_create_mean_app.sh", :args => "[[mean_app]]", :privileged => false
	config.vm.provision :shell, :path => "provision/99_cleanup.sh"
end
