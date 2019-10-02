#!/bin/bash

# Package Update
sudo apt-get update -y

# Install Cuckoo
sh install_cuckoo.sh

# Install log analysis tools
sh install_log_analysis_tools.sh

# Setup Cuckoo
sh setup_cuckoo.sh
