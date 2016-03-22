#!/bin/bash

re='^[0-9]+$'
if ! [[ $1 =~ $re ]] || [[ $1 -lt 10 ]] ; then
   echo "ERROR: argument should be a number greater or equal than 10" >&2; exit 1
fi

while true
	do ddclient -daemon 0
	sleep $1
done