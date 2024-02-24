#!/bin/bash

CURR_DIR=$(dirname $0)

systemctl enable /opt/cloudinitinstall/tbz-gns3-config/src/download-install-gns3-templates.service

