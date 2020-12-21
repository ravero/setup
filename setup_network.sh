#!/bin/bash
#------------------------------------------------------------------------------
# Network Setup
#
# This script will set defaults for network connections on the computer.
# It will list the identified networks on the computer and apply and ask
#   each one to apply settings.
#------------------------------------------------------------------------------

# DNS Settings
dns1_ipv4="1.1.1.1"                     # Cloudflare DNS 1
dns2_ipv4="1.0.0.1"                     # Cloudflare DNS 2
dns1_ipv6="2606:4700:4700::1111"        # Cloudflare DNS 1 for IPv6
dns2_ipv6="2606:4700:4700::1001"        # Cloudflare DNS 2 for IPv6

# A function to apply default dns settings to the specified adapter
function apply_dns() {
    adapter=$1

    read -p "Do you want to apply DNS settings for '${adapter}' adapter? " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "Setting DNS Servers for '${adapter}'adapter..."
        networksetup -setdnsservers "${adapter}" $dns1_ipv4 $dns2_ipv4 $dns1_ipv6 $dns2_ipv6
        echo ""
        echo "${adapter} DNS Servers:"
        networksetup -getdnsservers "${adapter}"
    fi
}

# Determine available networks to list
NETS_FILE=`mktemp`
NETS_FILTERED_FILE=`mktemp`

networksetup -listallnetworkservices >> $NETS_FILE

LINES=`wc -l ${NETS_FILE} | awk '{ print $1 }'`
LINES=$((LINES-1))
tail -n $LINES $NETS_FILE >> $NETS_FILTERED_FILE

IFS=$'\n' read -d '' -r -a adapters < $NETS_FILTERED_FILE

# Ask to apply on the default adapters
for adapter in "${adapters[@]}"
do
    apply_dns "${adapter}"
done

# Cleanup
rm $NETS_FILE
rm $NETS_FILTERED_FILE
