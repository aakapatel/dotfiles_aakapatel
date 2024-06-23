#!/bin/bash

while true; do
    # Get the battery level
    BATTERY_LEVEL=$(acpi -b | grep -P -o '[0-9]+(?=%)')
    # echo "Current battery level: $BATTERY_LEVEL" >> ~/battery_warning.log

    # Check if battery level is below 96% (for testing)
    if [ $BATTERY_LEVEL -lt 10 ]; then
        # Send notification
        notify-send "Battery Warning" 
        # Play a sound
        paplay /usr/share/sounds/freedesktop/stereo/bell.oga
    else
        # notify-send "Sufficient Battery" 
        # Play a sound
        # echo "Battery level is above 20%, no beep." >> ~/battery_warning.log
    fi

    # Sleep for 10 seconds before checking again
    sleep 60
done
