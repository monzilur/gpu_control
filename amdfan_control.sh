#!/bin/bash
# for 58% fan speed
sudo echo 1 > /sys/class/drm/card0/device/hwmon/hwmon0/pwm1_enable && sudo echo 150 > /sys/class/drm/card0/device/hwmon/hwmon0/pwm1

sudo echo 1 > /sys/class/drm/card1/device/hwmon/hwmon1/pwm1_enable && sudo echo 150 > /sys/class/drm/card1/device/hwmon/hwmon1/pwm1
