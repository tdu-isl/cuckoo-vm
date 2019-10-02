#!/bin/sh

# Requirements

## Virtualbox
sudo apt-get install virtualbox -y
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install virtualbox-ext-pack

## Installing Python libraries
sudo apt-get install python python-pip python-dev libffi-dev libssl-dev -y
sudo apt-get install python-virtualenv python-setuptools -y
sudo apt-get install libjpeg-dev zlib1g-dev swig -y

## Use Django-based Web Interface
sudo apt-get install mongodb -y

## Install tcpdump
sudo apt-get install tcpdump apparmor-utils -y
sudo aa-disable /usr/sbin/tcpdump

sudo groupadd pcap
sudo usermod -a -G pcap cuckoo
sudo chgrp pcap /usr/sbin/tcpdump
sudo setcap cap_net_raw,cap_net_admin=eip /usr/sbin/tcpdump

sudo apt-get install libcap2-bin -y
sudo pip2 install m2crypto==0.24.0

## Install guacd
sudo apt install libguac-client-rdp0 libguac-client-vnc0 libguac-client-ssh0 guacd -y

# Installing Cuckoo

## add groups
sudo usermod -a -G vboxusers $USER

## Install Cuckoo
sudo pip2 install -U pip2 setuptools
sudo pip2 install -U cuckoo

# Install Vagrant
sudo apt install vagrant -y

## ubuntuが最小構成だった場合はrubyがないので要インストール
sudo apt install ruby -y

## Requirements
sudo gem install winrm
sudo gem install winrm-elevated
