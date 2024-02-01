#!/bin/bash

# Configuration
export DISPLAY=:1         # Set the display to :1 (change as needed)
output="LVDS-1"           # Display output identifier
crtc=0                    # CRTC (Cathode Ray Tube Controller) identifier
step=10                   # Step size for brightness adjustment
duration=0.05             # Duration of sleep between adjustments (in seconds)

# Function to gradually adjust brightness
adjust_brightness() {
    # Gradually decrease brightness
    for ((brightness=100; brightness>=0; brightness-=step)); do
        set_brightness $brightness
        sleep $duration
    done

    # Gradually increase brightness
    for ((brightness=0; brightness<=100; brightness+=step)); do
        set_brightness $brightness
        sleep $duration
    done
}

# Function to set brightness using xrandr
set_brightness() {
    brightness_value=$(bc -l <<< "scale=2; $1 / 100") # Calculate brightness value as a fraction
    xrandr --output $output --brightness $brightness_value --crtc $crtc --gamma 1.0:1.0:1.0
}

adjust_brightness
