#!/bin/bash

grep "sudo" /var/log/auth.log | grep "session opened" |tail -n 10

