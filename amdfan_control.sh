#!/bin/bash
# for 58% fan speed
echo 1 | sudo tee -a /sys/class/drm/card0/device/hwmon/hwmon0/pwm1_enable
echo 150 | sudo tee -a /sys/class/drm/card0/device/hwmon/hwmon0/pwm1

echo 1 | sudo tee -a /sys/class/drm/card1/device/hwmon/hwmon1/pwm1_enable
echo 150 | sudo tee -a /sys/class/drm/card1/device/hwmon/hwmon1/pwm1
