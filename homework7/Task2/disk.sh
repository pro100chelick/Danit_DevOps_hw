#!/bin/bash

THRESHOLD=$1

USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
  
  TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
  
  echo "[$TIMESTAMP] ПОПЕРЕДЖЕННЯ: Використання розділу / становить ${USAGE}%" >> /var/log/disk.log
fi
