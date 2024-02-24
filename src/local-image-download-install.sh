#!/bin/bash
GNS3_SERVER="192.168.23.1"
mkdir -p /opt/gns3/images/IOS
chown gns3:gns3 /opt/gns3/images/IOS
mkdir -p /opt/gns3/images/QEMU
chown gns3:gns3 /opt/gns3/images/QEMU

logger "Downloading and installing c3600"...
curl "http://10.0.33.2/images/IOS/c3660-a3jk9s-mz.124-19.image.tar.gz" -o "c3660-a3jk9s-mz.124-19.image.tar.gz"
tar -x --use-compress-program=pigz -v -f "c3660-a3jk9s-mz.124-19.image.tar.gz" -C "/opt/gns3/images/IOS"
rm "c3660-a3jk9s-mz.124-19.image.tar.gz"
chown gns3:gns3 "/opt/gns3/images/IOS/c3660-a3jk9s-mz.124-19.image"
chmod 644 "/opt/gns3/images/IOS/c3660-a3jk9s-mz.124-19.image"
md5sum "/opt/gns3/images/IOS/c3660-a3jk9s-mz.124-19.image" > "/opt/gns3/images/IOS/c3660-a3jk9s-mz.124-19.image.md5sum"

gns3_template0=$(curl -s "http://10.0.33.2/images/IOS/c3660-a3jk9s-mz.124-19.image.json")
curl -X POST "http://${GNS3_SERVER}:3080/v2/templates" -d "$gns3_template0"
logger "Installed c3600"

logger "Downloading and installing c3725"...
curl "http://10.0.33.2/images/IOS/c3725-adventerprisek9-mz.124-25d.image.tar.gz" -o "c3725-adventerprisek9-mz.124-25d.image.tar.gz"
tar -x --use-compress-program=pigz -v -f "c3725-adventerprisek9-mz.124-25d.image.tar.gz" -C "/opt/gns3/images/IOS"
rm "c3725-adventerprisek9-mz.124-25d.image.tar.gz"
chown gns3:gns3 "/opt/gns3/images/IOS/c3725-adventerprisek9-mz.124-25d.image"
chmod 644 "/opt/gns3/images/IOS/c3725-adventerprisek9-mz.124-25d.image"
md5sum "/opt/gns3/images/IOS/c3725-adventerprisek9-mz.124-25d.image" > "/opt/gns3/images/IOS/c3725-adventerprisek9-mz.124-25d.image.md5sum"

gns3_template1=$(curl -s "http://10.0.33.2/images/IOS/c3725-adventerprisek9-mz.124-25d.image.json")
curl -X POST "http://${GNS3_SERVER}:3080/v2/templates" -d "$gns3_template1"
logger "Installed c3725"

logger "Downloading and installing c3745"...
curl "http://10.0.33.2/images/IOS/c3745-adventerprisek9-mz.124-25d.image.tar.gz" -o "c3745-adventerprisek9-mz.124-25d.image.tar.gz"
tar -x --use-compress-program=pigz -v -f "c3745-adventerprisek9-mz.124-25d.image.tar.gz" -C "/opt/gns3/images/IOS"
rm "c3745-adventerprisek9-mz.124-25d.image.tar.gz"
chown gns3:gns3 "/opt/gns3/images/IOS/c3745-adventerprisek9-mz.124-25d.image"
chmod 644 "/opt/gns3/images/IOS/c3745-adventerprisek9-mz.124-25d.image"
md5sum "/opt/gns3/images/IOS/c3745-adventerprisek9-mz.124-25d.image" > "/opt/gns3/images/IOS/c3745-adventerprisek9-mz.124-25d.image.md5sum"

gns3_template2=$(curl -s "http://10.0.33.2/images/IOS/c3745-adventerprisek9-mz.124-25d.image.json")
curl -X POST "http://${GNS3_SERVER}:3080/v2/templates" -d "$gns3_template2"
logger "Installed c3745"

logger "Downloading and installing c7200"...
curl "http://10.0.33.2/images/IOS/c7200-adventerprisek9-mz.124-24.T5.image.tar.gz" -o "c7200-adventerprisek9-mz.124-24.T5.image.tar.gz"
tar -x --use-compress-program=pigz -v -f "c7200-adventerprisek9-mz.124-24.T5.image.tar.gz" -C "/opt/gns3/images/IOS"
rm "c7200-adventerprisek9-mz.124-24.T5.image.tar.gz"
chown gns3:gns3 "/opt/gns3/images/IOS/c7200-adventerprisek9-mz.124-24.T5.image"
chmod 644 "/opt/gns3/images/IOS/c7200-adventerprisek9-mz.124-24.T5.image"
md5sum "/opt/gns3/images/IOS/c7200-adventerprisek9-mz.124-24.T5.image" > "/opt/gns3/images/IOS/c7200-adventerprisek9-mz.124-24.T5.image.md5sum"

gns3_template3=$(curl -s "http://10.0.33.2/images/IOS/c7200-adventerprisek9-mz.124-24.T5.image.json")
curl -X POST "http://${GNS3_SERVER}:3080/v2/templates" -d "$gns3_template3"
logger "Installed c7200"

logger "Downloading and installing MikroTik CHR 7.5"...
curl "http://10.0.33.2/images/QEMU/chr-7.5.img.tar.gz" -o "chr-7.5.img.tar.gz"
tar -x --use-compress-program=pigz -v -f "chr-7.5.img.tar.gz" -C "/opt/gns3/images/QEMU"
rm "chr-7.5.img.tar.gz"
chown gns3:gns3 "/opt/gns3/images/QEMU/chr-7.5.img"
chmod 644 "/opt/gns3/images/QEMU/chr-7.5.img"
md5sum "/opt/gns3/images/QEMU/chr-7.5.img" > "/opt/gns3/images/QEMU/chr-7.5.img.md5sum"

gns3_template4=$(curl -s "http://10.0.33.2/images/QEMU/chr-7.5.img.json")
curl -X POST "http://${GNS3_SERVER}:3080/v2/templates" -d "$gns3_template4"
logger "Installed MikroTik CHR 7.5"

logger "Downloading and installing MikroTik CHR 7.7"...
curl "http://10.0.33.2/images/QEMU/chr-7.7.img.tar.gz" -o "chr-7.7.img.tar.gz"
tar -x --use-compress-program=pigz -v -f "chr-7.7.img.tar.gz" -C "/opt/gns3/images/QEMU"
rm "chr-7.7.img.tar.gz"
chown gns3:gns3 "/opt/gns3/images/QEMU/chr-7.7.img"
chmod 644 "/opt/gns3/images/QEMU/chr-7.7.img"
md5sum "/opt/gns3/images/QEMU/chr-7.7.img" > "/opt/gns3/images/QEMU/chr-7.7.img.md5sum"

gns3_template5=$(curl -s "http://10.0.33.2/images/QEMU/chr-7.7.img.json")
curl -X POST "http://${GNS3_SERVER}:3080/v2/templates" -d "$gns3_template5"
logger "Installed MikroTik CHR 7.7"

logger "Downloading and installing Debian 11.4"...
curl "http://10.0.33.2/images/QEMU/debian-11-genericcloud-amd64-20220711-1073.qcow2.tar.gz" -o "debian-11-genericcloud-amd64-20220711-1073.qcow2.tar.gz"
tar -x --use-compress-program=pigz -v -f "debian-11-genericcloud-amd64-20220711-1073.qcow2.tar.gz" -C "/opt/gns3/images/QEMU"
rm "debian-11-genericcloud-amd64-20220711-1073.qcow2.tar.gz"
chown gns3:gns3 "/opt/gns3/images/QEMU/debian-11-genericcloud-amd64-20220711-1073.qcow2"
chmod 644 "/opt/gns3/images/QEMU/debian-11-genericcloud-amd64-20220711-1073.qcow2"
md5sum "/opt/gns3/images/QEMU/debian-11-genericcloud-amd64-20220711-1073.qcow2" > "/opt/gns3/images/QEMU/debian-11-genericcloud-amd64-20220711-1073.qcow2.md5sum"

curl "http://10.0.33.2/images/QEMU/debian-cloud-init-data.iso.tar.gz" -o "debian-cloud-init-data.iso.tar.gz"
tar -x --use-compress-program=pigz -v -f "debian-cloud-init-data.iso.tar.gz" -C "/opt/gns3/images/QEMU"
rm "debian-cloud-init-data.iso.tar.gz"
chown gns3:gns3 "/opt/gns3/images/QEMU/debian-cloud-init-data.iso"
chmod 644 "/opt/gns3/images/QEMU/debian-cloud-init-data.iso"
md5sum "/opt/gns3/images/QEMU/debian-cloud-init-data.iso" > "/opt/gns3/images/QEMU/debian-cloud-init-data.iso.md5sum"

gns3_template6=$(curl -s "http://10.0.33.2/images/QEMU/debian-11-genericcloud-amd64-20220711-1073.qcow2.json")
curl -X POST "http://${GNS3_SERVER}:3080/v2/templates" -d "$gns3_template6"
logger "Installed Debian 11.4"

logger "Downloading and installing Micro Core Linux 6.4"...
curl "http://10.0.33.2/images/QEMU/linux-microcore-6.4.img.tar.gz" -o "linux-microcore-6.4.img.tar.gz"
tar -x --use-compress-program=pigz -v -f "linux-microcore-6.4.img.tar.gz" -C "/opt/gns3/images/QEMU"
rm "linux-microcore-6.4.img.tar.gz"
chown gns3:gns3 "/opt/gns3/images/QEMU/linux-microcore-6.4.img"
chmod 644 "/opt/gns3/images/QEMU/linux-microcore-6.4.img"
md5sum "/opt/gns3/images/QEMU/linux-microcore-6.4.img" > "/opt/gns3/images/QEMU/linux-microcore-6.4.img.md5sum"

gns3_template7=$(curl -s "http://10.0.33.2/images/QEMU/linux-microcore-6.4.img.json")
curl -X POST "http://${GNS3_SERVER}:3080/v2/templates" -d "$gns3_template7"
logger "Installed Micro Core Linux 6.4"

logger "Downloading and installing Windows 10 w/ Edge"...
curl "http://10.0.33.2/images/QEMU/MSEdge-Win10-VMware-disk1.vmdk.tar.gz" -o "MSEdge-Win10-VMware-disk1.vmdk.tar.gz"
tar -x --use-compress-program=pigz -v -f "MSEdge-Win10-VMware-disk1.vmdk.tar.gz" -C "/opt/gns3/images/QEMU"
rm "MSEdge-Win10-VMware-disk1.vmdk.tar.gz"
chown gns3:gns3 "/opt/gns3/images/QEMU/MSEdge-Win10-VMware-disk1.vmdk"
chmod 644 "/opt/gns3/images/QEMU/MSEdge-Win10-VMware-disk1.vmdk"
md5sum "/opt/gns3/images/QEMU/MSEdge-Win10-VMware-disk1.vmdk" > "/opt/gns3/images/QEMU/MSEdge-Win10-VMware-disk1.vmdk.md5sum"

gns3_template8=$(curl -s "http://10.0.33.2/images/QEMU/MSEdge-Win10-VMware-disk1.vmdk.json")
curl -X POST "http://${GNS3_SERVER}:3080/v2/templates" -d "$gns3_template8"
logger "Installed Windows 10 w/ Edge"

logger "Downloading and installing OPNsense 20.7"...
curl "http://10.0.33.2/images/QEMU/OPNsense-20.7-OpenSSL-nano-amd64.img.tar.gz" -o "OPNsense-20.7-OpenSSL-nano-amd64.img.tar.gz"
tar -x --use-compress-program=pigz -v -f "OPNsense-20.7-OpenSSL-nano-amd64.img.tar.gz" -C "/opt/gns3/images/QEMU"
rm "OPNsense-20.7-OpenSSL-nano-amd64.img.tar.gz"
chown gns3:gns3 "/opt/gns3/images/QEMU/OPNsense-20.7-OpenSSL-nano-amd64.img"
chmod 644 "/opt/gns3/images/QEMU/OPNsense-20.7-OpenSSL-nano-amd64.img"
md5sum "/opt/gns3/images/QEMU/OPNsense-20.7-OpenSSL-nano-amd64.img" > "/opt/gns3/images/QEMU/OPNsense-20.7-OpenSSL-nano-amd64.img.md5sum"

gns3_template9=$(curl -s "http://10.0.33.2/images/QEMU/OPNsense-20.7-OpenSSL-nano-amd64.img.json")
curl -X POST "http://${GNS3_SERVER}:3080/v2/templates" -d "$gns3_template9"
logger "Installed OPNsense 20.7"

logger "Downloading and installing pfSense 2.4.5-p1"...
curl "http://10.0.33.2/images/QEMU/pfSense-CE-2.4.5-RELEASE-p1-amd64.iso.tar.gz" -o "pfSense-CE-2.4.5-RELEASE-p1-amd64.iso.tar.gz"
tar -x --use-compress-program=pigz -v -f "pfSense-CE-2.4.5-RELEASE-p1-amd64.iso.tar.gz" -C "/opt/gns3/images/QEMU"
rm "pfSense-CE-2.4.5-RELEASE-p1-amd64.iso.tar.gz"
chown gns3:gns3 "/opt/gns3/images/QEMU/pfSense-CE-2.4.5-RELEASE-p1-amd64.iso"
chmod 644 "/opt/gns3/images/QEMU/pfSense-CE-2.4.5-RELEASE-p1-amd64.iso"
md5sum "/opt/gns3/images/QEMU/pfSense-CE-2.4.5-RELEASE-p1-amd64.iso" > "/opt/gns3/images/QEMU/pfSense-CE-2.4.5-RELEASE-p1-amd64.iso.md5sum"

curl "http://10.0.33.2/images/QEMU/empty100G.qcow2.tar.gz" -o "empty100G.qcow2.tar.gz"
tar -x --use-compress-program=pigz -v -f "empty100G.qcow2.tar.gz" -C "/opt/gns3/images/QEMU"
rm "empty100G.qcow2.tar.gz"
chown gns3:gns3 "/opt/gns3/images/QEMU/empty100G.qcow2"
chmod 644 "/opt/gns3/images/QEMU/empty100G.qcow2"
md5sum "/opt/gns3/images/QEMU/empty100G.qcow2" > "/opt/gns3/images/QEMU/empty100G.qcow2.md5sum"

gns3_template10=$(curl -s "http://10.0.33.2/images/QEMU/pfSense-CE-2.4.5-RELEASE-p1-amd64.iso.json")
curl -X POST "http://${GNS3_SERVER}:3080/v2/templates" -d "$gns3_template10"
logger "Installed pfSense 2.4.5-p1"

logger "Downloading and installing pfSense 2.6.0"...
curl "http://10.0.33.2/images/QEMU/pfSense-CE-2.6.0-RELEASE-amd64.iso.tar.gz" -o "pfSense-CE-2.6.0-RELEASE-amd64.iso.tar.gz"
tar -x --use-compress-program=pigz -v -f "pfSense-CE-2.6.0-RELEASE-amd64.iso.tar.gz" -C "/opt/gns3/images/QEMU"
rm "pfSense-CE-2.6.0-RELEASE-amd64.iso.tar.gz"
chown gns3:gns3 "/opt/gns3/images/QEMU/pfSense-CE-2.6.0-RELEASE-amd64.iso"
chmod 644 "/opt/gns3/images/QEMU/pfSense-CE-2.6.0-RELEASE-amd64.iso"
md5sum "/opt/gns3/images/QEMU/pfSense-CE-2.6.0-RELEASE-amd64.iso" > "/opt/gns3/images/QEMU/pfSense-CE-2.6.0-RELEASE-amd64.iso.md5sum"

curl "http://10.0.33.2/images/QEMU/empty100G.qcow2.tar.gz" -o "empty100G.qcow2.tar.gz"
tar -x --use-compress-program=pigz -v -f "empty100G.qcow2.tar.gz" -C "/opt/gns3/images/QEMU"
rm "empty100G.qcow2.tar.gz"
chown gns3:gns3 "/opt/gns3/images/QEMU/empty100G.qcow2"
chmod 644 "/opt/gns3/images/QEMU/empty100G.qcow2"
md5sum "/opt/gns3/images/QEMU/empty100G.qcow2" > "/opt/gns3/images/QEMU/empty100G.qcow2.md5sum"

gns3_template11=$(curl -s "http://10.0.33.2/images/QEMU/pfSense-CE-2.6.0-RELEASE-amd64.iso.json")
curl -X POST "http://${GNS3_SERVER}:3080/v2/templates" -d "$gns3_template11"
logger "Installed pfSense 2.6.0"

logger "Downloading and installing TrueNAS 13.0-U3"...
curl "http://10.0.33.2/images/QEMU/TrueNAS-13.0-U3.iso.tar.gz" -o "TrueNAS-13.0-U3.iso.tar.gz"
tar -x --use-compress-program=pigz -v -f "TrueNAS-13.0-U3.iso.tar.gz" -C "/opt/gns3/images/QEMU"
rm "TrueNAS-13.0-U3.iso.tar.gz"
chown gns3:gns3 "/opt/gns3/images/QEMU/TrueNAS-13.0-U3.iso"
chmod 644 "/opt/gns3/images/QEMU/TrueNAS-13.0-U3.iso"
md5sum "/opt/gns3/images/QEMU/TrueNAS-13.0-U3.iso" > "/opt/gns3/images/QEMU/TrueNAS-13.0-U3.iso.md5sum"

curl "http://10.0.33.2/images/QEMU/empty30G.qcow2.tar.gz" -o "empty30G.qcow2.tar.gz"
tar -x --use-compress-program=pigz -v -f "empty30G.qcow2.tar.gz" -C "/opt/gns3/images/QEMU"
rm "empty30G.qcow2.tar.gz"
chown gns3:gns3 "/opt/gns3/images/QEMU/empty30G.qcow2"
chmod 644 "/opt/gns3/images/QEMU/empty30G.qcow2"
md5sum "/opt/gns3/images/QEMU/empty30G.qcow2" > "/opt/gns3/images/QEMU/empty30G.qcow2.md5sum"

gns3_template12=$(curl -s "http://10.0.33.2/images/QEMU/TrueNAS-13.0-U3.iso.json")
curl -X POST "http://${GNS3_SERVER}:3080/v2/templates" -d "$gns3_template12"
logger "Installed TrueNAS 13.0-U3"

logger "Downloading and installing Ubuntu Desktop Guest 22.04"...
curl "http://10.0.33.2/images/QEMU/Ubuntu_22.04_64bit.vmdk.tar.gz" -o "Ubuntu_22.04_64bit.vmdk.tar.gz"
tar -x --use-compress-program=pigz -v -f "Ubuntu_22.04_64bit.vmdk.tar.gz" -C "/opt/gns3/images/QEMU"
rm "Ubuntu_22.04_64bit.vmdk.tar.gz"
chown gns3:gns3 "/opt/gns3/images/QEMU/Ubuntu_22.04_64bit.vmdk"
chmod 644 "/opt/gns3/images/QEMU/Ubuntu_22.04_64bit.vmdk"
md5sum "/opt/gns3/images/QEMU/Ubuntu_22.04_64bit.vmdk" > "/opt/gns3/images/QEMU/Ubuntu_22.04_64bit.vmdk.md5sum"

gns3_template13=$(curl -s "http://10.0.33.2/images/QEMU/Ubuntu_22.04_64bit.vmdk.json")
curl -X POST "http://${GNS3_SERVER}:3080/v2/templates" -d "$gns3_template13"
logger "Installed Ubuntu Desktop Guest 22.04"

logger "Downloading and installing Cisco IOSvL2 15.2(20200924:215240)"...
curl "http://10.0.33.2/images/QEMU/vios_l2-adventerprisek9-m.ssa.high_iron_20200929.qcow2.tar.gz" -o "vios_l2-adventerprisek9-m.ssa.high_iron_20200929.qcow2.tar.gz"
tar -x --use-compress-program=pigz -v -f "vios_l2-adventerprisek9-m.ssa.high_iron_20200929.qcow2.tar.gz" -C "/opt/gns3/images/QEMU"
rm "vios_l2-adventerprisek9-m.ssa.high_iron_20200929.qcow2.tar.gz"
chown gns3:gns3 "/opt/gns3/images/QEMU/vios_l2-adventerprisek9-m.ssa.high_iron_20200929.qcow2"
chmod 644 "/opt/gns3/images/QEMU/vios_l2-adventerprisek9-m.ssa.high_iron_20200929.qcow2"
md5sum "/opt/gns3/images/QEMU/vios_l2-adventerprisek9-m.ssa.high_iron_20200929.qcow2" > "/opt/gns3/images/QEMU/vios_l2-adventerprisek9-m.ssa.high_iron_20200929.qcow2.md5sum"

gns3_template14=$(curl -s "http://10.0.33.2/images/QEMU/vios_l2-adventerprisek9-m.ssa.high_iron_20200929.qcow2.json")
curl -X POST "http://${GNS3_SERVER}:3080/v2/templates" -d "$gns3_template14"
logger "Installed Cisco IOSvL2 15.2(20200924:215240)"

logger "Downloading and installing Cisco IOSv 15.9(3)M3"...
curl "http://10.0.33.2/images/QEMU/vios-adventerprisek9-m.spa.159-3.m3.qcow2.tar.gz" -o "vios-adventerprisek9-m.spa.159-3.m3.qcow2.tar.gz"
tar -x --use-compress-program=pigz -v -f "vios-adventerprisek9-m.spa.159-3.m3.qcow2.tar.gz" -C "/opt/gns3/images/QEMU"
rm "vios-adventerprisek9-m.spa.159-3.m3.qcow2.tar.gz"
chown gns3:gns3 "/opt/gns3/images/QEMU/vios-adventerprisek9-m.spa.159-3.m3.qcow2"
chmod 644 "/opt/gns3/images/QEMU/vios-adventerprisek9-m.spa.159-3.m3.qcow2"
md5sum "/opt/gns3/images/QEMU/vios-adventerprisek9-m.spa.159-3.m3.qcow2" > "/opt/gns3/images/QEMU/vios-adventerprisek9-m.spa.159-3.m3.qcow2.md5sum"

curl "http://10.0.33.2/images/QEMU/IOSv_startup_config.img.tar.gz" -o "IOSv_startup_config.img.tar.gz"
tar -x --use-compress-program=pigz -v -f "IOSv_startup_config.img.tar.gz" -C "/opt/gns3/images/QEMU"
rm "IOSv_startup_config.img.tar.gz"
chown gns3:gns3 "/opt/gns3/images/QEMU/IOSv_startup_config.img"
chmod 644 "/opt/gns3/images/QEMU/IOSv_startup_config.img"
md5sum "/opt/gns3/images/QEMU/IOSv_startup_config.img" > "/opt/gns3/images/QEMU/IOSv_startup_config.img.md5sum"

gns3_template15=$(curl -s "http://10.0.33.2/images/QEMU/vios-adventerprisek9-m.spa.159-3.m3.qcow2.json")
curl -X POST "http://${GNS3_SERVER}:3080/v2/templates" -d "$gns3_template15"
logger "Installed Cisco IOSv 15.9(3)M3"

logger "Downloading and installing Cisco IOSv 15.6(1)T"...
curl "http://10.0.33.2/images/QEMU/vios-adventerprisek9-m.vmdk.SPA.156-1.T.tar.gz" -o "vios-adventerprisek9-m.vmdk.SPA.156-1.T.tar.gz"
tar -x --use-compress-program=pigz -v -f "vios-adventerprisek9-m.vmdk.SPA.156-1.T.tar.gz" -C "/opt/gns3/images/QEMU"
rm "vios-adventerprisek9-m.vmdk.SPA.156-1.T.tar.gz"
chown gns3:gns3 "/opt/gns3/images/QEMU/vios-adventerprisek9-m.vmdk.SPA.156-1.T"
chmod 644 "/opt/gns3/images/QEMU/vios-adventerprisek9-m.vmdk.SPA.156-1.T"
md5sum "/opt/gns3/images/QEMU/vios-adventerprisek9-m.vmdk.SPA.156-1.T" > "/opt/gns3/images/QEMU/vios-adventerprisek9-m.vmdk.SPA.156-1.T.md5sum"

curl "http://10.0.33.2/images/QEMU/IOSv_startup_config.img.tar.gz" -o "IOSv_startup_config.img.tar.gz"
tar -x --use-compress-program=pigz -v -f "IOSv_startup_config.img.tar.gz" -C "/opt/gns3/images/QEMU"
rm "IOSv_startup_config.img.tar.gz"
chown gns3:gns3 "/opt/gns3/images/QEMU/IOSv_startup_config.img"
chmod 644 "/opt/gns3/images/QEMU/IOSv_startup_config.img"
md5sum "/opt/gns3/images/QEMU/IOSv_startup_config.img" > "/opt/gns3/images/QEMU/IOSv_startup_config.img.md5sum"

gns3_template16=$(curl -s "http://10.0.33.2/images/QEMU/vios-adventerprisek9-m.vmdk.SPA.156-1.T.json")
curl -X POST "http://${GNS3_SERVER}:3080/v2/templates" -d "$gns3_template16"
logger "Installed Cisco IOSv 15.6(1)T"


systemctl disable /opt/cloudinitinstall/tbz-gns3-config/src/download-install-gns3-templates.service
touch /opt/cloudinitinstall/images.installed
