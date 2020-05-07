#!/bin/bash

echo "C0:" `grep -e MHz /proc/cpuinfo | sed -n 1p | cut -c 12-19` "MHz"
