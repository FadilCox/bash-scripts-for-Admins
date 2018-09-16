#!/bin/bash

#Author: Fadil Cox
######################
echo Server check

echo Checking firewall ...

firewallstatus=$(systemctl status firewalld.service | grep Act* | awk '{print $2}')




if [[ "$firewallstatus" == 'active' ]]
then
echo the firewall is active
else
echo Firewall is not active
fi

echo Checking apache ...

apachestatus=$(systemctl status apache2.service | grep Act* | awk '{print $2}')




if [[ "$apachestatus" == 'active' ]]
then
echo Apache  is active
else
echo Apache is not active
fi
 
