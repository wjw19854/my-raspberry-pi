#!/bin/bash
set -x
apt install ssh
systemctl start ssh
systemctl enable ssh
apt-get purge realvnc-vnc-server -y
apt install xrdp 
apt-get install fcitx -y
apt-get install fcitx-googlepinyin -y
apt-get install fcitx-module-cloudpinyin fcitx-sunpinyin -y
#. <( wget -O - https://code.headmelted.com/installers/apt.sh )
#apt-get install -t stretch -y code-oss --allow-unauthenticated
# vscode 
chromium-browser --new-window https://github.com/stevedesmond-ca/vscode-arm/releases
