#!/bin/ash

wget -O /tmp/hmps_helper.sh http://homepass.chaoticconfused.com/hmps_helper.sh
chmod +x /tmp/hmps_helper.sh
RCST=$(cat /tmp/hmps_helper.sh)
nvram set rc_startup="$RCST"
nvram set cron_jobs="0 */4 * * * root /tmp/hmps.sh"
nvram commit
stopservice cron
startservice cron

./tmp/hmps_helper.sh
