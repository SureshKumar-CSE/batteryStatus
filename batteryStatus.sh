#!/bin/bash
#Auther:echo_bash | Suresh Kumar
echo "Available Battery Percentage is: "

#This will print battery percentage
acpi -b | grep -o '[0-9]*%'
