###
# Long exposure timelapse for HERO 3+ Black
#
# https://konradit.github.io/gopro-longexp/
###

# Run a Photo mode
t app appmode photo 
sleep 1

# Set up an ISO and Exposure Time
# Usage: t ia2 -ae exp [ISO: 100-6400] [EXT: 2-1000]
t ia2 -ae still_exp 3200 2
sleep 1

# Press the shot button
t app button shutter PR 
sleep 10

# Run this script again
d:\autoexec.ash

# Restart the camera
reboot yes
