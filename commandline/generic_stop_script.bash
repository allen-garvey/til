#!/usr/bin/env bash

#example script to stop application running in background, such as a 
#service running on FreeBSD

app_name="example.jar"
pid=`ps aux | grep $app_name | awk '{print $2}'`
kill -9 $pid > /dev/null 2>&1