#!/usr/bin/env bash

type nvm >/dev/null 2>&1

if [ $? -ne 0 ]; then
	echo ">>>>>Installing nvm<<<<<"
	\curl https://raw.githubusercontent.com/creationix/nvm/$1/install.sh | bash
else
	echo ">>>>>nvm already installed<<<<<"
fi

echo ">>>>>nvm version is: $(nvm --version)<<<<<"
