#!/bin/ash

wget -O /tmp/hpms_helper.sh http://homepass.chaoticconfused.com/hpms_install/hpms_helper_atheros.sh
chmod +x /tmp/hpms_helper.sh
RCST=$(cat /tmp/hpms_helper.sh)
nvram set rc_startup="$RCST"
nvram set cron_jobs="0 */4 * * * root /tmp/hpms.sh"
nvram commit
stopservice cron
startservice cron

/tmp/hpms_helper.sh
