#!/bin/bash

hostname=$1
status=$(curl --silent -XGET http://$1:12900/system/cluster/stats/elasticsearch | grep -o '"status":"[A-Z]*' | cut -d':' -f2 | cut -d'"' -f2)

if [ $status = GREEN ]
	then
	echo "OK - Elastic status is GREEN"
fi

if [ $status = "YELLOW" ]
	then
	echo "WARNING - Elastic status is YELLOW"
fi

if [ $status = "RED" ]
	then
	echo "CRITICAL - Elastic status is RED"
fi
