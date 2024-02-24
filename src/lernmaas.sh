#!/bin/bash

export GNS3_SERVER=192.168.23.1

# Ubuntu Cloud-Image holen und aufbereiten 
sudo apt-get install -y genisoimage unzip libguestfs-tools wget
sudo wget -q -O /opt/gns3/images/QEMU/jammy-server-cloudimg-amd64.img http://10.0.33.2/images/QEMU/jammy-server-cloudimg-amd64.img
sudo qemu-img resize /opt/gns3/images/QEMU/jammy-server-cloudimg-amd64.img +30G

# Standard Templates anlegen
curl -X POST "http://{$GNS3_SERVER}:3080/v2/templates" -d '{"name": "Ubuntu-22", "compute_id": "local", "qemu_path": "/usr/bin/qemu-system-x86_64", "hda_disk_image": "jammy-server-cloudimg-amd64.img", "symbol": ":/symbols/affinity/circle/gray/vm.svg", "ram": 2048, "template_type": "qemu"}' 

# WebShop Templates
curl -sfL https://raw.githubusercontent.com/mc-b/lerngns3/main/scripts/gns3-webshop.sh | bash -

# Kubernetes Templates
curl -sfL https://raw.githubusercontent.com/mc-b/lerngns3/main/scripts/gns3-microk8s.sh | bash -

# LernMAAS Template (Services)
curl -sfL https://raw.githubusercontent.com/mc-b/lernmaas/master/scripts/gns3-templates.sh | bash -

# MAAS.io Template 
curl -sfL https://raw.githubusercontent.com/mc-b/lerngns3/main/scripts/gns3-maas.sh | bash -

# KVM und WebVirtCloud Templates 
curl -sfL https://raw.githubusercontent.com/mc-b/lerngns3/main/scripts/gns3-kvm.sh | bash -

logger "LernMAAS installed"

touch /opt/cloudinitinstall/lernmaas.installed
