#!/usr/bin/env bash

#Check if mongodb is installed via apt-get as we will be using a different version
dpkg -l mongodb >/dev/null 2>&1

#if MongoDB is installed via apt-get then delete it
if [ $? -eq 0 ]; then
	echo ">>>>>REMOVING MongoDB<<<<<"
	apt-get -y remove --purge mongodb
	apt-get -y remove --purge mongodb-clients
	apt-get -y remove --purge mongodb-dev
	apt-get -y remove --purge mongodb-server
fi

#Add MongoDB source to apt-get and install the latest
#http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/
if [ ! -s /etc/apt/sources.list.d/mongodb.list ]; then
	echo ">>>>>INSTALLING MongoDB<<<<<"
	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
	echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | tee /etc/apt/sources.list.d/mongodb.list
	apt-get -y update
	apt-get -y install mongodb-org
fi
