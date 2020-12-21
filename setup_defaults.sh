#!/bin/bash

#------------------------------------------------------------------------------
# Setup Scripts
# 06 - Application Defaults
# This script sets the default application handlers using `duti` tool.
#
# Tool reference at: https://github.com/moretension/duti
# To add new defaults settings you need to use the duti tool with the following
#   command:
#
#   duti -s [appBundleId] [extension] [role]
#
# Where:
# - appBundleId is the bundle identifier of the app that will handle the file
# - extension is the file type extension without the prefixing dot
# - role is the type of workloads that the default app will handle: 
#   - all | viewer | editor | shell | none
#
# For further information about the duti usage check the man pages `man duti`
#
# To retrieve the Bundle ID of an application use the following command:
#
#   codesign -dv --entitlements - /Applications/[Application.app]
#
# The bundle ID will appear in the second line with the `Identifier` prefix.
# Reference: https://docs.vmware.com/en/VMware-Workspace-ONE-UEM/1811/VMare-Tunnel-on-Linux/GUID-AWT-EXTRACTMACOSBUNDLEID.html
#------------------------------------------------------------------------------

duti -s org.videolan.vlc mp4 viewer
duti -s com.microsoft.VSCode md all
duti -s com.microsoft.VSCode txt all
duti -s com.microsoft.VSCode json all
duti -s com.microsoft.VSCode sh all
duti -s com.microsoft.VSCode PublishSettings all
