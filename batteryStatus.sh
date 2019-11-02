#!/bin/bash
echo"Available battery percentage is: "
#This will print battery percentage
acpi -b | grep -o '[0-9]*%'
