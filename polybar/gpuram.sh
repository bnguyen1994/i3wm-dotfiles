#!/usr/bin/env bash
#Capture nvidia-settings output
used=`nvidia-settings -query UsedDedicatedGPUMemory | perl -ne 'print $1 if /UsedDedicatedGPUMemory.*?: (\d+)./;'`
total=`nvidia-settings -query TotalDedicatedGPUMemory | perl -ne 'print $1 if /TotalDedicatedGPUMemory.*?: (\d+)./;'`

#Maths
percent=`echo "scale=2 ; $used / $total" | bc | cut -c 2-3`

#Output to cli
echo "VRAM "$percent"%"
