#!/bin/bash

# Detect external monitor (assuming "HDMI-A-1" is your external at home)
if hyprctl monitors | grep -q "DP-3"; then
    ln -sf ~/.config/hypr/monitors_home.conf ~/.config/hypr/monitors.conf
else
    ln -sf ~/.config/hypr/monitors.conf ~/.config/hypr/monitors.conf
fi
