#!/bin/bash
echo "Launching Code With Power Monitoring Enabled"
echo "Usage: $> gpu_power_wrapper <CUDA Device ID> <commands ...>"
gpu_power_monitor $1 &
$2 $3 $4 $5 $6 $7 $8 $9 &&
ps -e -o pid,cmd | grep gpu_power_monitor | grep -v grep | grep -v sudo | cut -d ' ' -f 1 | xargs kill -9
