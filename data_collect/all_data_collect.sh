#!/bin/bash
st="$(echo "$(date '+%Y-%m-%d_%H:%M:%S')")"
mkdir $st
echo "      date     time $(free -m | grep total | sed -E 's/^    (.*)/\1/g')" >> ~/data_collect/$st/memory.log
while true; do
            echo "$(date '+%Y-%m-%d %H:%M:%S') $(free -m | grep Mem: | sed 's/Mem://g')" >> ~/data_collect/$st/memory.log;
	    echo "$(date '+%Y-%m-%d %H:%M:%S') $(nvidia-smi -q -d POWER | grep Draw)" >> ~/data_collect/$st/GPU_power.log;
                sleep 1
        done
