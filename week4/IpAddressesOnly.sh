#!/bin/bash
#Executes the IpInfo.sh script 
CURRENT_DIR=$(cd $(dirname "$0") && pwd -P)
infoscript="$CURRENT_DIR/IpInfo.sh"

#uses sed to display only the lines with 'IP Address' on them.

net_info=$($infoscript)

addresses=$(echo -e "$net_info" | sed -n '/[\t]*IP Address/p')


#format output

echo -e "IP addresses on this computer are:\n$addresses"

