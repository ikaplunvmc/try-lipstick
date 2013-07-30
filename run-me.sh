#!/bin/bash                                                                                                                              

set -e

BOXNAME="centos-6.4-x86-64"

if vagrant boxes | grep "$BOXNAME"; then
    vagrant box add "$BOXNAME" "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130427.box"
fi

vagrant up

echo "Vagrant box up and running Lipstick."
