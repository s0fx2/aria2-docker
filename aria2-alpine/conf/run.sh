#!/bin/sh
if [ ! -f "/root/aria2/aria2.session" ]; then
  touch /root/aria2/aria2.session
fi

if [ ! -f "/root/aria2/dht.dat" ]; then
  touch /root/aria2/dht.dat
fi

# Enable for IPV6 DHT and Edit aria2.conf
#if [ ! -f "/root/aria2/dht6.dat" ]; then
#  touch /root/aria2/dht.dat
#fi

/usr/bin/aria2c --conf-path /root/aria2/aria2.conf
