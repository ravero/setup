#!/bin/bash

#------------------------------------------------------------------------------
# Use this script to setup a local SQL Server instance 
#------------------------------------------------------------------------------

sudo docker pull mcr.microsoft.com/mssql/server:2017-latest
sudo docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=P@ssword1" \
   -p 1433:1433 \
   --name sql1 \
   --restart unless-stopped \
   -d mcr.microsoft.com/mssql/server:2017-latest