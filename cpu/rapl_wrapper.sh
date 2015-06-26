#!/bin/bash
sudo echo "Launching Code With Power Monitoring Enabled"
sudo rapl &
$1 $2 $3 $4 $5 $6 $7 $8 $9 &&
ps -e -o pid,cmd | grep rapl | grep -v grep | grep -v sudo | cut -d ' ' -f 1 | xargs sudo kill -9
