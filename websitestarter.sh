#!/bin/bash
#
#
# Author: Fadil Cox
#

echo Starting Script 
echo You may be asked for password , if so enter it

sudo firewall-cmd --zone=public --add-service=http
echo Opened http port
sudo firewall-cmd --zone=public --add-service=mysql
echo Opened mysql port
sudo firewall-cmd --zone=public --add-port=22/tcp
echo Opened port 22
sudo firewall-cmd --zone=public --add-service=ssh
echo Opened ssh .. Finished!

echo These are the services you now have available

sudo firewall-cmd --zone=public --list-services
