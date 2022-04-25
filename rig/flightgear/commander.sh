#!/bin/bash

CLI_CMD=$1
CMD2UDP=""

case $CLI_CMD in
  "powerup")      CMD2UDP=$CLI_CMD ;;
  "engine_start") CMD2UDP=$CLI_CMD ;;
  "engine_stop")  CMD2UDP=$CLI_CMD ;;
   *) echo Unknown command && exit 0 ;;
esac

WAIT_OPT="-w 0"

echo -e "$CMD2UDP\x00" | nc $WAIT_OPT -u 127.0.0.1 5000
