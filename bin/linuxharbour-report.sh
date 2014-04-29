#!/bin/sh
# linuxharbour.com Linux System Report
# Sammy Fung <sammy@sammy.hk>
# linuxharbour-sysreport

subtitle() {
  local name="$@"
  echo " "
  echo "## ${name} ##"
}

export LC_ALL=C

hostname=`hostname -f`
repdate=`date`

echo "linuxharbour.com Linux System Report for ${hostname}"
echo "on ${repdate}"

### Number of Cores and CPU Model
subtitle "Processors"
grep "^model name" /proc/cpuinfo | sort | uniq -c | \
  sed -e "s/^\s*//" -e "s/model name\t:/threads on/g"

### System Uptime
subtitle "System Uptime and Current Loading"
uptime

### Memory Size and Usage
subtitle "Memory Size and Usage"
if [ -f /etc/debian_version ]
then
  $freeopt="-h"
fi
free ${freeopt}

### Storage Usage
subtitle "Storage Usage"
df -h

### Network Interfaces
subtitle "Network Interfaces"
/sbin/ifconfig

### Network Route
subtitle "Network Routing"
/sbin/route -n

### Footer
echo " "
echo "---"
echo "This Report Generator is developed by Sammy Fung."
echo "https://github.com/sammyfung/linuxharbour-report"
echo "Support: sammy@sammy.hk"
