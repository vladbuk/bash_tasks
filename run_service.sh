#!/bin/bash

case $1 in
  start)
    echo "Service started"
    sleep 9999
  ;;
  stop)
    echo "Service stopped"
    kill -15 `pgrep -f "run_service.sh start"`
    kill `pgrep -f "sleep 9999"` > /dev/null
    #ps -fH
  ;;
  restart)
    ./run_service.sh stop
    ./run_service.sh start
  ;;
  *) echo "usage: $0 [ start | stop | restart ]"
esac
