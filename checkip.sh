#!/bin/bash

#
# Script: checkip.sh
# Desc:	  Query checkip.dyndns.org using curl for current ip address, remove html tags, 
#	        and append output to logfile in "<datetimestamp> | Current IP Address: <ip>" format
#

DNAME="checkip.dyndns.org"
LOGFILE="checkip.log"

curl -s $DNAME | awk -F'<body>|</body>' '{print strftime("%F %T %Z"),"|", $2}' >> $LOGFILE


