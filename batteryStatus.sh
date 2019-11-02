#!/bin/bash
echo "Available Battery Percentage is: "

#This will print battery percentage
acpi -b | grep -o '[0-9]*%'
