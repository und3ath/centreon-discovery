#!/bin/sh
#
### BEGIN INIT INFO
# Provides:           discovery-agent.sh
# Required-Start:     $all
# Required-Stop:      $all
# Default-Start:      2 3 4 5
# Default-Stop:       0 1 6
# Short-Description:  Discovery Agent poller
# Description:        Poller agent for centreon-discovery module
### END INIT INFO

#
# Author:    Sub2.13
#

case "$1" in
    start)
        echo -n "Starting agent poller :"
	pid=`ps h | grep "DiscoveryAgent_poller.py" | grep -v grep | cut -d " " -f2`
	if [ -z $pid ] ; then
	    /usr/bin/python /etc/centreon-discovery/DiscoveryAgent_poller.py &
	    echo " done."
	    exit 0			
	else
	    echo " failed. DiscoveryAgent_poller.py is stopping ?"
	    exit 1
	fi
        ;;
    stop)
	echo -n "Stopping agent poller :"
	pid=`ps h | grep "DiscoveryAgent_poller.py" | grep -v grep | cut -d " " -f1`
	if [ -z $pid ] ; then
	    echo " failed. DiscoveryAgent_poller.py is running ?"
	    exit 1
	else
	    kill $pid
	    echo " done."
	    exit 0
	fi
        ;;
    status)
	echo -n "Status agent poller :"
	if [ `ps h | grep "DiscoveryAgent_poller.py" | grep -v grep | wc -l` -eq 1 ] ; then
            echo " started."		
	    exit 0			
        else
            echo " stopped."
            exit 1
        fi
        ;;				
    restart)
	$0 stop
	$0 start
	;;
    *)
        echo "Usage: discovery-agent {start|stop|restart|status}"
        exit 1
        ;;
esac