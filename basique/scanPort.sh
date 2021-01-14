#!/bin/bash

sudo nmap -sS $1 | grep open | awk -F '/' '(0 == 0){ print "Port " $1 " is open" }'