#!/bin/sh
# linuxharbour.com Linux System Report
# Sammy Fung <sammy@sammy.hk>
# linuxharbour-sysreport

print linuxharbour.com Linux System Report

### Number of Cores and CPU Model
grep "^model name" /proc/cpuinfo | sort | uniq -c

### System Uptime
uptime

### Memory Size and Usage
free -h

### Storage Usage
df -h
