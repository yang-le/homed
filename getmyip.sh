#! /bin/sh

ifconfig | grep -A 1 ppp0 | grep inet | awk -F: '{print $2}' | awk '{print $1}'
wget http://ipecho.net/plain -q -O -; echo
