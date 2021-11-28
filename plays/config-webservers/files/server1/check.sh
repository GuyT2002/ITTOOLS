#!/bin/bash
/bin/ping 8.8.8.8 -w 1 -c 1 > /dev/null
if [ $? -eq 0 ]; then
	exit 0
else
	exit 1
fi
