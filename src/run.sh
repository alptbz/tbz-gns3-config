#!/bin/bash

CURR_DIR=$(dirname $0)

bash $CURRDIR/local-image-download-install.sh

systemctl disable /opt/cloudinitinstall/tbz-gns3-config/src/tbz-gns3-config.service

logger "Disabled tbz-gns3-config.service"
touch /opt/cloudinitinstall/tbz-gns3-config.installed
