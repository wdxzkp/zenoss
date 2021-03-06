#!/bin/bash
##########################################
# Version: 01b
#  Status: Functional
#   Notes: Testing out 4.2.5
##########################################

read -p "This script needs to run as the zenoss user and zenoss must be running. Press ctrl+c to cancel if needed..."
array=( PySamba*.egg WindowsMonitor*.egg ActiveDirectory*.egg IISMonitor*.egg MSExchange*.egg MSMQMonitor*.egg MSSQLServer*.egg ApacheMonitor*.egg DellMonitor*.egg DigMonitor*.egg DnsMonitor*.egg FtpMonitor*.egg HPMonitor*.egg HttpMonitor*.egg IRCDMonitor*.egg JabberMonitor*.egg LDAPMonitor*.egg NNTPMonitor*.egg NtpMonitor*.egg ZenJMX*.egg LinuxMonitor*.egg ZenossVirtualHostMonitor*.egg EsxTop*.egg XenMonitor*.egg DeviceSearch*.egg PythonCollector*.egg MySqlMonitor*.egg WBEM*.egg Microsoft.Windows*.egg )
for i in "${array[@]}"
do
	zenpack --install /tmp/opt/zenoss/packs/ZenPacks.zenoss.$i
done

easy_install readline

/usr/local/zenoss/bin/zenoss stop

echo "...Script complete, move onto step 03"
exit 0

