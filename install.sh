#!/bin/bash
. module/log.sh
LOG_FILE="/var/log/cuckoo_vm.log"
: > $LOG_FILE # ログファイルの初期化

# Package Update
infomation "Update Package"
sudo apt-get update -y >> $LOG_FILE

# Install Cuckoo
infomation "Install Cuckoo"
sh scripts/install_cuckoo.sh >> $LOG_FILE

# Install log analysis tools
infomation "Install Related Tools"
sh scripts/install_log_analysis_tools.sh >> $LOG_FILE

# Setup Cuckoo
infomation "Setup Cuckoo"
sh scripts/setup_cuckoo.sh >> $LOG_FILE

success "Finish cuckoo-vm"
# Show banner
cat ./BANNER.txt
