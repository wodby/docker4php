#!/bin/bash

set -e

if [ "X$XDEBUG_REMOTE_PORT" =  "X" ] ; then
XDEBUG_REMOTE_PORT=9000
fi

if [ "X$XDEBUG" = "X1" ]  ; then

echo "xdebug.remote_enable=on" > /etc/php.d/xdebug.ini
echo "xdebug.remote_autostart=off" >> /etc/php.d/xdebug.ini
echo "xdebug.remote_host=10.254.254.254" >> /etc/php.d/xdebug.ini
echo "xdebug.remote_port=$XDEBUG_REMOTE_PORT" >> /etc/php.d/xdebug.ini
fi
