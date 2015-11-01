#!/bin/ash
# Homepass Mac Switcher (hpms)
# Author - tyrdchaos - gbatemp.net forums
# Date - 10/31/2015
# Version 0.1beta_initial
#-------------------------------------------------------------------------------

# Special thanks to duke_srg - gbatemp.net forums for the original idea
# and their script (found at http://gbatemp.net/threads/how-to-have-a-homemade
# -streetpass-relay.352645/page-10#post-4739510)

# GPL v3 License Statement
#-------------------------------------------------------------------------------
# This script is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This script is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this script.  If not, see <http://www.gnu.org/licenses/>
#-------------------------------------------------------------------------------

# This script was developed on a TP-Link TL-WR710N v1 router using
# DD-WRT v3.0-r27805 std (09/11/15).  Please see the README for details on other
# hardware
#-------------------------------------------------------------------------------


FILE=/tmp/prime.macs                             # replace with file to read
NUM=$(wc -l < ${FILE})                              # count number of lines
RAND=$(tr -cd 0-9 </dev/urandom | head -c 3)        # generate random number
X=$(( $RAND % $NUM + 1 ))                           # bring RAND into range 1 to NUM
MAC=$(sed -n ${X}p ${FILE})                         # random MAC from prime.macs

nvram set ath0.1_hwaddr=$MAC                        # assign MAC to ath0.1
nvram set def_whwaddr=$MAC                          # all 3 statements seem
nvram set wl0_hwaddr=$MAC                           # to be required
                                                    # Assumes Atheros based
                                                    # hardware.  See README
                                                    # for details
nvram commit                                        # commit changes and reboot
reboot
