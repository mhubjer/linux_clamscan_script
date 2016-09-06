#!/bin/bash
#Written by: Mirza Hubjer
#mhubjer@gmail.com

NOW=$(date '+%d-%b-%Y')
echo "RUNNING CLAMSCAN..."
mkdir /home/$USER/Desktop/CLAMSCAN_LOGS/"$NOW" && sudo freshclam &&
clamscan --exclude-dir="^/sys" -r --bell -i / | grep FOUND >> /home/$USER/Desktop/CLAMSCAN_LOGS/"$NOW"/found_log.txt
