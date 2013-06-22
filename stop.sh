#!/bin/sh

# Common stop script for Java applications

COMPONENT=@COMPONENT@

SCRIPT=`readlink -f $0`
SCRIPT_DIR=`dirname $SCRIPT`
BASE_DIR=$SCRIPT_DIR/..

LOGS_DIR=/$BASE_DIR/logs

if [ -f $LOGS_DIR/$COMPONENT.pid ]; then
   PID=`cat $LOGS_DIR/$COMPONENT.pid`
else
   echo "No PID file found in directory: $LOGS_DIR"
   exit 1
fi

if [ "$PID" != "" ]; then
   echo "Killing $COMPONENT running on PID $PID"
   kill -15 $PID
else
   echo "No PID found in file: $LOGS_DIR/$COMPONENT.pid"
   exit 1
fi