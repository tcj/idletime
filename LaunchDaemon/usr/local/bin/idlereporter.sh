#!/bin/bash

server="http://10.0.5.108:9999/idletime"

getPrimaryInterface()
{
  echo $(networksetup -listnetworkserviceorder | grep '^([0-9]' | cut -d " " -f 2-16 | head -1)
}

getPrimaryIP()
{
  service=$(getPrimaryInterface)
  echo $(networksetup -getinfo "${service}" | awk '/^IP address/ { print $NF }')
}

getIdleTime()
{
  echo $(($(ioreg -c IOHIDSystem | sed -e '/HIDIdleTime/ !{ d' -e 't' -e '}' -e 's/.* = //g' -e 'q') / 1000000000))  
}

getComputerName()
{
  echo "$(networksetup -getcomputername)"
}

curl -s -d "cn=$(getComputerName)" -d "ip=$(getPrimaryIP)" -d "idletime=$(getIdleTime)" "${server}"

