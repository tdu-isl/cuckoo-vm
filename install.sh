#!/bin/bash

# Package Update
sudo apt-get update -y

# Install Cuckoo
sh scripts/install_cuckoo.sh

# Install log analysis tools
sh scripts/install_log_analysis_tools.sh

# Setup Cuckoo
sh scripts/setup_cuckoo.sh
