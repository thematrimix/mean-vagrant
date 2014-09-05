#!/usr/bin/env bash

VAGRANTPATH="/home/vagrant"

apt-get -y update

#Install the required tools for NVM, RVM and general usefulness
apt-get -y install curl build-essential openssl libssl-dev git python linux-headers-$(uname -r)

