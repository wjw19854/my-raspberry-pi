#!/bin/bash
set -x
#开启SSH
apt install ssh
systemctl start ssh
systemctl enable ssh

# 远程桌面
apt-get purge realvnc-vnc-server -y
apt install xrdp 

# 拼音输入法
apt-get install fcitx -y
apt-get install fcitx-googlepinyin -y
apt-get install fcitx-module-cloudpinyin fcitx-sunpinyin -y

# miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-armv7l.sh
bash Miniconda3-latest-Linux-armv7l.sh

# Firefox
apt install firefox-esr firefox-esr-l10n-zh-cn

# vscode下载
chromium-browser --new-window https://github.com/stevedesmond-ca/vscode-arm/releases

