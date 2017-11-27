#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh

port="UnspecifiedPort"

if [ $# -gt 0 ]; then
  port=$1
else
  echo -ne "show process running on port: "
  read port
fi

# echo "\nnetstat -vanp tcp | grep $port\n"
# netstat -vanp tcp | grep $port

echoColor 'cyan' "
$ sudo lsof -i :$port
"
sudo lsof -i :$port

echo -ne "-> enter PID to kill: "
read PID

echoColor 'red' "
$ kill -9 $PID
"
sudo kill -9 $PID