#!/bin/bash

CLIENTNAME=$1
OVPN_DATA="ovpn-data"
docker run --name $OVPN_DATA -v /etc/openvpn busybox

IP=`ifconfig eth0 | perl -n -e 'if (m/inet addr:([\d\.]+)/g) { print $1 }'`
docker run --volumes-from $OVPN_DATA --rm kylemanna/openvpn ovpn_genconfig -u udp://$IP:1194

docker run --volumes-from $OVPN_DATA --rm -it kylemanna/openvpn ovpn_initpki

echo 'description "Docker container for OpenVPN server"
start on filesystem and started docker
stop on runlevel [!2345]
respawn
script
  exec docker run --volumes-from ovpn-data --rm -p 1194:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn
end script' | sudo tee /etc/init/docker-openvpn.conf

sudo start docker-openvpn
docker run --volumes-from $OVPN_DATA --rm -it kylemanna/openvpn easyrsa build-client-full $CLIENTNAME nopass
docker run --volumes-from $OVPN_DATA --rm kylemanna/openvpn ovpn_getclient $CLIENTNAME > $CLIENTNAME.ovpn
