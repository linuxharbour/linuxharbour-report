#!/bin/sh
# linuxharbour.com Linux System Report
# Sammy Fung <sammy@sammy.hk>
# linuxharbour-sysreport

echo "linuxharbour.com Linux System Report"
echo "===================================="
echo " "

hostname=`hostname -f`
repdate=`date`
echo System: ${hostname}
echo Report Time: ${repdate}
echo " "

### Number of Cores and CPU Model
echo "Processor"
echo "---------"
grep "^model name" /proc/cpuinfo | sort | uniq -c
echo " "

### System Uptime
echo "System Uptime and Current Loading"
echo "---------------------------------"
uptime
echo " "

### Memory Size and Usage
echo "Memory Size and Usage"
echo "---------------------"
free -h
echo " "

### Storage Usage
echo "Storage Usage"
echo "-------------"
df -h
echo " "

### Network Interfaces
echo "Network Interfaces"
echo "------------------"
/sbin/ifconfig
echo " "

### Network Route
echo "Network Routing"
echo "---------------"
/sbin/route -n
echo " "

### Footer
echo "---"
echo "This Report Generator is developed by Sammy Fung."
echo "Support: sammy@sammy.hk"
