#!/bin/bash
#------------------------------------------------------------------------------
# Network Setup
#
# This script will set defaults for network connections on the computer.
# Check if the Network Services apply correctly. If you need to list use:
#
#   networksetup -listallnetworkservices
#
# Then update the script apropriately.
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

# Ask to apply on the default adapters
declare -a adapters=('Wi-Fi' 'Display Ethernet' 'USB 10/100/1000 LAN' 'Thunderbolt Bridge' 'Ethernet')
for adapter in "${adapters[@]}"
do
    apply_dns "${adapter}"
done