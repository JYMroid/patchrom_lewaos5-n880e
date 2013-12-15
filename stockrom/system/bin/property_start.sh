#! /system/bin/sh
myfile=/data/data/com.baidu.trafficmonitor/uid
if test -f $myfile
then
	uid=$(cat $myfile)
	echo "proxy::"$uid
	if test $uid!="-1"
		then
    	iptables -t nat -m owner --uid-owner $uid -A OUTPUT -p tcp -j RETURN 
	fi
fi
iptables -t nat -A OUTPUT -p tcp  --dport 80 -j DNAT --to-destination 127.0.0.1:8001
