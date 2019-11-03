#!/bin/bash
#Auther:echo_bash | Suresh Kumar

battery_level=$(acpi -b |cut -d "," -f2| sed 's/%//g')
#echo $battery_level

ac_power=$(acpi -b|grep -c "Discharging")
#echo $ac_power

#When the battery is charging and it gets charged up to 100%
if [[ $ac_power -eq 0 && $battery_level -eq 100 ]]
then
echo "Battery is full." "Level: $battery_level% " > batteryStatus.txt
echo "Charge full, please remove the charger." >> batteryStatus.txt
fi

#When the battery is not charging and it goes below 30%
if [[ $ac_power -eq 1 && $battery_level -lt 30 ]]
then
echo "Battery is low." "Level: $battery_level% " > batteryStatus.txt
echo "Please connect the charger." >> batteryStatus.txt
fi
