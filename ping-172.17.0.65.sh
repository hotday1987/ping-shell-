#!/bin/bash
#
domain=172.17.0.65
while true
do
`which ping`  -c 1 $domain -n -w1 &> /dev/null
#`$(date +%Y-%m-%d--%H:%M:%S)` &> /dev/null
if [ $? -eq 0 ];then
	str="$(date +%Y-%m-%d--%H:%M:%S) $domain : 运行成功";
else
	
	str="$(date +%Y-%m-%d--%H:%M:%S) $domain : 运行------";
fi
	echo $str >> ./$domain.txt
	sleep 1;
done
