#!/bin/bash

port=0000
if [ $# -gt 0 ]; then
  port=$1
else
  echo -ne "show process running on port: "
  read port
fi

# echo "\nnetstat -vanp tcp | grep $port\n"
# netstat -vanp tcp | grep $port

echo "
sudo lsof -i :$port
"
sudo lsof -i :$port

echo -ne "\n -> PID to kill: "
read PID

echo "
kill -9 $PID
"
kill -9 $PID