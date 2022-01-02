# for 58% fan speed
echo 1 | sudo tee -a /sys/class/drm/card0/device/hwmon/hwmon0/pwm1_enable
echo 150 | sudo tee -a /sys/class/drm/card0/device/hwmon/hwmon0/pwm1

echo 1 | sudo tee -a /sys/class/drm/card1/device/hwmon/hwmon1/pwm1_enable
echo 150 | sudo tee -a /sys/class/drm/card1/device/hwmon/hwmon1/pwm1

#https://unix.stackexchange.com/questions/620072/reduce-amd-gpu-wattage
#https://ol.reddit.com/r/Amd/comments/agwroj/how_to_overclock_your_amd_gpu_on_linux/
echo "auto" > sudo tee -a /sys/class/drm/card0/device/power_dpm_force_performance_level
echo "profile_min_sclk" > sudo tee -a /sys/class/drm/card0/device/power_dpm_force_performance_level
echo "manual" > sudo tee -a /sys/class/drm/card0/device/power_dpm_force_performance_level



readlink -f /sys/class/drm/card0/device
/sys/devices/pci0000:00/0000:00:01.2/0000:02:00.2/0000:03:06.0/0000:07:00.0

# use this to read the current power profile
cat echo $(readlink -f /sys/class/drm/card0/device)"/pp_od_clk_voltage"


# use this to undervolt
sudo sh -c "echo 's 7 1450 1150' > /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/pp_od_clk_voltage"
sudo sh -c "echo 'm 2 2065 950' > /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/pp_od_clk_voltage"

