#!/bin/bash
echo "lets go and send connection info to influx"
/usr/bin/nohup python -u $N-P-M-GRAF_HOME/Getipinfo.py

sleep 0.5
tee $N-P-M-GRAF_HOME/nohup.out > /proc/1/fd/1 2>/proc/1/fd/2
