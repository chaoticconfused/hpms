#!/bin/ash

rm /tmp/hpms.sh
rm /tmp/homepass.macs
wget -O /tmp/hpms.sh http://homepass.chaoticconfused.com/hpms_broadcom.sh
chmod +x /tmp/hpms.sh
wget -O /tmp/homepass.macs http://homepass.chaoticconfused.com/prime.macs
./tmp/hpms.sh
