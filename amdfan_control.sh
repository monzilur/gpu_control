#!/bin/bash
# for 58% fan speed
sudo -c "echo 1 > /sys/class/drm/card0/device/hwmon/hwmon0/pwm1_enable"
sudo -c "echo 150 > /sys/class/drm/card0/device/hwmon/hwmon0/pwm1"

sudo -c "echo 1 > /sys/class/drm/card1/device/hwmon/hwmon1/pwm1_enable"
sudo -c "echo 150 > /sys/class/drm/card1/device/hwmon/hwmon1/pwm1"
