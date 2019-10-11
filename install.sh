#!/bin/bash
. module/log.sh
LOG_FILE="/var/log/cuckoo_vm.log"

# Package Update
sudo apt-get update -y >> $LOG_FILE

# Install Cuckoo
sh scripts/install_cuckoo.sh >> $LOG_FILE

# Install log analysis tools
sh scripts/install_log_analysis_tools.sh >> $LOG_FILE

# Setup Cuckoo
sh scripts/setup_cuckoo.sh >> $LOG_FILE

# Show banner
cat ./BANNER.txt
