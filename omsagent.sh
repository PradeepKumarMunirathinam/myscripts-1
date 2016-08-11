#!/bin/sh
 
rm -rf /opt/microsoft/
cd /root/

if [ -f omsagent-1.1.0-28.universal.x64.sh ]
then
 rm -rf omsagent-1.1.0-28.universal.x64.sh
else
 :
fi

wget https://github.com/Microsoft/OMS-Agent-for-Linux/releases/download/v1.1.0-28/omsagent-1.1.0-28.universal.x64.sh
sha256sum ./omsagent-1.1.0-28.universal.x64.sh
sudo sh ./omsagent-1.1.0-28.universal.x64.sh --upgrade -w 9855a6d3-ac23-40ab-bc67-618f3f88e602 -s A0qCeOqfJniMQ8BdNcjN+fSjLDCjTOEZxMwd0RYUzZAUp6+uFC6wyAWL2dq6ejpZVhtrZTt8hFRkpA9iMPtq7A==
