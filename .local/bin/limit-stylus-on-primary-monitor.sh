#!/bin/bash

# Limit Huion tablet to work only on the primary connected monitor.
#
# By default the tablet works on all connected monitor but this is a waste
# of space when I work the space to write is limited to part of the tablet only.
#
# Requires
# * `xrandr`
# * `xinput`
# * `grep`, `cut`, `awk`

PRIMARY_MONITOR=`xrandr | grep " connected primary" | awk '{ print$1 }'`

STYLUS_ID=`xinput | grep "stylus" | cut -f 2 | cut -c 4-5 `
# or, STYLUS_ID=`xinput | grep "stylus" | awk '{ print $7 }' | awk -F "=" '{ print $2 }'`

xinput map-to-output $STYLUS_ID $MONITOR
