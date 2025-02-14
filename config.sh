#!/bin/sh

set -e
sudo apt update
sudo apt-get install git build-essential zlib1g-dev liblzma-dev python3-magic autoconf python-is-python3 python3-pip

# Temporary fix externally-managed-environment error
FILE="/usr/lib/python3.12/EXTERNALLY-MANAGED"
if [ -f "$FILE" ]; then
    sudo rm "$FILE"
fi

cd /root/firmware-mod-kit/src/binwalk-2.3.4/

# Set binwalk environment
pip install lzallright
sudo ./deps.sh --yes
sudo python3 ./setup.py install
sudo -H pip3 install git+https://github.com/ahupp/python-magic
sudo -H pip3 install git+https://github.com/sviehb/jefferson

cd /root/firmware-mod-kit/
