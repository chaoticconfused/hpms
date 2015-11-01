#!/bin/ash

rm /tmp/hpms.sh
rm /tmp/homepass.macs
wget -O /tmp/hmps.sh http://homepass.chaoticconfused.com/hmps_atheros.sh
chmod +x /tmp/hpms.sh
wget -O /tmp/homepass.macs http://homepass.chaoticconfused.com/prime.macs
./tmp/hmps.sh
