#!/bin/bash
. module/log.sh
LOG_FILE="./cuckoo_vm.log"
: > $LOG_FILE # ログファイルの初期化

# Package Update
information "Update Package"
sudo apt-get update -y >> $LOG_FILE

# Install Cuckoo
information "Install Cuckoo"
sh scripts/install_cuckoo.sh >> $LOG_FILE

# Install log analysis tools
information "Install Related Tools"
sh scripts/install_log_analysis_tools.sh >> $LOG_FILE

# Setup Cuckoo
information "Setup Cuckoo"
sh scripts/setup_cuckoo.sh >> $LOG_FILE

success "Finish cuckoo-vm"
# Show banner
cat ./BANNER.txt
