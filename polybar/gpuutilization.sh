#!/usr/bin/env bash

#echo "GPU "`nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader | cut -c-2`"%"
nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits | awk '{print "GPU",""$1"" "%"}'
