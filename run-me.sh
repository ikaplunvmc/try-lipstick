#!/bin/bash                                                                                                                              

set -e

VAGRANT_VERSION=`vagrant -v | awk '{print $3}' | awk -F '.' '{print $2}'`
if ! [ $VAGRANT_VERSION -gt 1 ]; then
    echo ""
    echo "ERROR: The installed Vagrant version is too low. Please install Vagrant 1.2.0 or higher."
    echo ""
    exit 1 
fi

BOXNAME="centos-6.4-x86-64"
BOXNAME_EXISTS=`vagrant box list | grep "$BOXNAME" | wc -l`

if [ $BOXNAME_EXISTS -eq 0 ]; then
    echo "Vagrant does not have the $BOXNAME box so downloading it now"
    vagrant box add "$BOXNAME" "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130427.box"
fi

vagrant up

echo "Vagrant box up and running Lipstick."
