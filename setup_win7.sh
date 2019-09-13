#!/bin/sh

wget -O "py27.msi" "https://www.python.org/ftp/python/2.7.16/python-2.7.16.msi"
vagrant reload --provision
