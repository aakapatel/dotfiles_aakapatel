#!/bin/bash

# Fetch CPU temperature using sensors command and extract the temperature value
# temp=$(sensors | awk '/Core 0/ {print $3}')
temp=$(sensors | grep 'Package id' | awk '{print $4}')
if [ -z "$temp" ]; then
	echo "CPU Temp: N/A"
else
	echo "CPU Temp: $temp"
fi
#
#

#
# # Convert millidegrees Celsius to degrees Celsius
# TEMP_C=$(echo "scale=2; $TEMP / 1000" | bc)
#
# echo "$TEMP_C"
