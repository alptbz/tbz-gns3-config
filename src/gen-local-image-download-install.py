import json

BASE_URL = "http://10.0.33.2/images/"
BASE_URLS = {}
BASE_URLS["IOS"] = f"{BASE_URL}IOS/"
BASE_URLS["QEMU"] = f"{BASE_URL}QEMU/"

lines = [
    "#!/bin/bash",
    'GNS3_SERVER="192.168.23.1"'
    '', 'mkdir -p /opt/gns3/images/IOS', 'chown gns3:gns3 /opt/gns3/images/IOS', 'mkdir -p /opt/gns3/images/QEMU',
    "chown gns3:gns3 /opt/gns3/images/QEMU", ""]

with open("images.json", "r") as fp:
    configdata = json.loads(fp.read())

i=0

for image in configdata["images"]:
    lines.append(f'logger "Downloading and installing {image["name"]}"...')
    for image_file in image["images"]:
        lines.append(f'curl "{BASE_URLS[image["base"]]}{image_file}.tar.gz" -o "{image_file}.tar.gz"')
        lines.append(f'tar -x --use-compress-program=pigz -v -f "{image_file}.tar.gz" -C "/opt/gns3/images/{image["base"]}"')
        lines.append(f'rm "{image_file}.tar.gz"')
        lines.append(f'chown gns3:gns3 "/opt/gns3/images/{image["base"]}/{image_file}"')
        lines.append(f'chmod 644 "/opt/gns3/images/{image["base"]}/{image_file}"')
        lines.append(f'md5sum "/opt/gns3/images/{image["base"]}/{image_file}"' + " | awk '{print $1}' | " + f'tr -d \'\\n\' > "/opt/gns3/images/{image["base"]}/{image_file}.md5sum"')
        lines.append('')
    lines.append(f'gns3_template{i}=$(curl -s "{BASE_URLS[image["base"]]}{image["config"]}")')
    lines.append('curl -X POST "http://${GNS3_SERVER}:3080/v2/templates" -d "$gns3_template' + str(i) + '"')
    lines.append(f'logger "Installed {image["name"]}"')
    lines.append('')
    i += 1

lines.append('')
lines.append("systemctl disable /opt/cloudinitinstall/tbz-gns3-config/src/download-install-gns3-templates.service")
lines.append("touch /opt/cloudinitinstall/images.installed")

with open("local-image-download-install.sh", "w") as fp:
    for line in lines:
        fp.write(line)
        fp.write("\n")
