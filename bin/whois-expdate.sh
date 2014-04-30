#!/bin/sh
# linuxharbour.com Linux System Report
# Sammy Fung <sammy@sammy.hk>
# linuxharbour-sysreport

echo "## Domain Expiration Date ##"
for i in $@
do
  echo -n "${i}: "
  #whois ${i} | grep -e "Date" | grep -e "Expir" | head -n 1 | sed -e "s/\s\s*/ /g" -e "s/ $//g" -e "s/.* //g"
  d=`whois ${i}`
  if [ $? != 0 ]
  then
    echo "NOT FOUND."
  else 
    echo ${d} | grep -e "Date" | grep -e "Expir" | head -n 1 | sed -e "s/\s\s*/ /g" -e "s/ $//g" -e "s/.* //g"
  fi
done

repdate=`date`
echo " "
echo "---"
echo "Report generated on ${repdate}"
echo "linuxharbour.com Linux System Report"
echo "This Report Generator is developed by Sammy Fung."
echo "https://github.com/sammyfung/linuxharbour-report"
echo "Support: sammy@sammy.hk"

