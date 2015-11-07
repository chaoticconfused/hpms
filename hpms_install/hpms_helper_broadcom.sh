#!/bin/ash
# Date - 11/7/2015
# Version 1.0 - Cooking With Grease
# See README.TXT for changelog

sleep 20s

rm /tmp/hpms.sh
rm /tmp/prime.macs
wget -O /tmp/hpms.sh http://homepass.chaoticconfused.com/hpms_install/hpms_broadcom.sh
chmod +x /tmp/hpms.sh
wget -O /tmp/prime.macs http://homepass.chaoticconfused.com/maclist/prime.macs
/tmp/hpms.sh
