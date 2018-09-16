#Author: Fadil Cox
#####################
echo You may be prompted for password, this script requires root access

apache_startup=sudo systemctl start apache2.service

$apache_startup

echo Apache started

firewall_startup=sudo systemctl start firewalld.service

$firewall_startup

echo firewall started


