#!/usr/bin/env bash

# $1 is the name of the app which comes from the arguments list

type express >/dev/null 2>&1

if [ $? -eq 0 ] && (( $# )); then
	if [ ! -d /vagrant/$1 ]; then
		echo ">>>>>Initializing your new mean application<<<<<"
		cd /vagrant
		express $1
		cd ~
	else
		echo ">>>>>Application already exists skipping<<<<<"
	fi
else
	echo ">>>>>express does not appear to be installed<<<<<"
fi
