#!/bin/bash

SLEEP=300
DDARGS="-foreground"

if [[ $# -ne 0 ]] ; then
	re='^[0-9]+$'
	if [[ $1 =~ $re ]] ; then
	   SLEEP=$1
	   DDARGS=${DDARGS}" ${@:2}"
	else
		DDARGS=${DDARGS}" ${@}"
	fi
fi

echo "INFO: Running 'ddclient ${DDARGS}' every ${SLEEP} seconds"
while true
	do ddclient $DDARGS
	sleep $SLEEP
done