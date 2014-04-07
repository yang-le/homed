#! /bin/sh

IP=`ifconfig | grep -A 1 ppp0 | grep inet | awk -F: '{print $2}' | awk '{print $1}'`

if [ -z $IP ]; then
wget http://ipecho.net/plain -q -O -; echo
else
echo $IP
fi

