#!/bin/sh
# linuxharbour.com Linux System Report
# Sammy Fung <sammy@sammy.hk>
# linuxharbour-sysreport

echo "linuxharbour.com Linux System Report"
echo "===================================="
echo " "

hostname=`hostname -f`
echo System: ${hostname}
echo " "

### Number of Cores and CPU Model
echo "Processor"
echo "========="
grep "^model name" /proc/cpuinfo | sort | uniq -c
echo " "

### System Uptime
uptime

### Memory Size and Usage
free -h

### Storage Usage
df -h
