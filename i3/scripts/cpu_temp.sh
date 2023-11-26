#!/bin/bash

# Fetch CPU temperature using sensors command and extract the temperature value
temp=$(sensors | awk '/Core 0/ {print $3}')

if [ -z "$temp" ]; then
    echo "CPU Temp: N/A"
else
    echo "CPU Temp: $temp"
fi
