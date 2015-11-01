#!/bin/ash

sleep 10s

rm /tmp/hpms.sh
rm /tmp/prime.macs
wget -O /tmp/hpms.sh http://homepass.chaoticconfused.com/hpms_install/hpms_atheros.sh
chmod +x /tmp/hpms.sh
wget -O /tmp/prime.macs http://homepass.chaoticconfused.com/maclist/prime.macs
/tmp/hpms.sh
