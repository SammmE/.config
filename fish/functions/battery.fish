function battery
    command echo "Battery: $(command cat /sys/class/power_supply/BAT0/capacity)%"
end
