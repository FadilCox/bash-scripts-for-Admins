#!/bin/bash
#
#
# Author: Fadil Cox
#

get_interface=$(ifconfig | grep wl* | awk '{print $1}')

#print does nothing but acts like a return function in c++ you have to echo the variable to get a output

echo your interface is $get_interface

iwconfig $get_interface
ifconfig $get_interface
~

