#!/bin/bash
while [ "1" == "1" ]
do
  echo "trying..."
  ping heise.de 2>/dev/null
  if [ -z $? ]
  then
    echo "no connection"
  fi
  sleep $1
done
