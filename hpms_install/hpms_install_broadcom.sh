#!/bin/ash
# Date - 11/7/2015
# Version 1.0 - Cooking With Grease
# See README.TXT for changelog

wget -O /tmp/hpms_helper.sh http://homepass.chaoticconfused.com/hpms_install/hpms_helper_broadcom.sh
chmod +x /tmp/hpms_helper.sh
RCST=$(head -n -1 /tmp/hpms_helper.sh)
nvram set rc_startup="$RCST"
nvram set cron_jobs="0 */4 * * * root /tmp/hpms.sh"
nvram commit
stopservice cron
startservice cron

/tmp/hpms_helper.sh
