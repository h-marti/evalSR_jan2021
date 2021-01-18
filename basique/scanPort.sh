#!/bin/bash

sudo nmap -sS $1 | awk -F '/' '/open/{ print "Port " $1 " is open" }'
