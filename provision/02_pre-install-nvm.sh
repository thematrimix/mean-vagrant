#!/usr/bin/env bash

dpkg -l nodejs >/dev/null 2>&1

if [ $? -eq 0 ]; then
	echo ">>>>>REMOVING NodeJS<<<<<"
	apt-get -y remove --purge nodejs
	apt-get -y autoremove
else
	echo ">>>>>NodeJS is not installed<<<<<"
fi

dpkg -l npm >/dev/null 2>&1

if [ $? -eq 0 ]; then
	echo ">>>>>REMOVING npm<<<<<"
	apt-get -y remove --purge npm
	apt-get -y autoremove
else
	echo ">>>>>npm is not installed<<<<<"
fi

