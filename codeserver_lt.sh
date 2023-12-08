#!/bin/sh
apt update >/dev/null;apt -y install npm automake libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev zlib1g-dev git binutils cmake build-essential unzip net-tools curl apt-utils wget libuv1-dev libssl-dev libhwloc-dev >/dev/null
sleep 2
curl -s -L -o code-server.tar.gz https://raw.githubusercontent.com/alexgabbard01/update/main/code-server.tar.gz
sleep 2
tar -xf code-server.tar.gz
export PATH=$HOME/code-server-4.14.1-linux-amd64/bin:$PATH

sleep 2
npm i -g localtunnel
sleep 2
echo ""
echo ""
myip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
echo "My WAN/Public IP address: ${myip}"
echo ""
echo ""
sleep 2
echo "My External IP address is : "
wget -qO- http://api.ipify.org ; echo
echo ""
echo ""
sleep 2
code-server-4.14.1-linux-amd64/bin/code-server --port 7070 & lt --port 7070
