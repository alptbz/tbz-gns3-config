#!/bin/bash

INSTALLED_FILE="/opt/cloudinitinstall/tbz-gns3-config.installed"

if [ -f "$INSTALLED_FILE" ]; then
    echo "already installed - the file $INSTALLED_FILE exists - exit"
    exit 1
fi 

CURR_DIR=$(dirname $0)

bash $CURR_DIR/local-image-download-install.sh

systemctl disable /opt/cloudinitinstall/tbz-gns3-config/src/tbz-gns3-config.service
logger "Disabled tbz-gns3-config.service"

touch $INSTALLED_FILE

sleep 5

reboot
