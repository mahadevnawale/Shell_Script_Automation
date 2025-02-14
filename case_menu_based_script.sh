#!/bin/bash

echo "choose an option : start, stop, restart"
read choice
case $choice in 
start) "starting service..." ;;
stop) "stopping service..." ;;
restart) "restarting service...."
*) "invalid option..."
esac
