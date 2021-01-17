#!/bin/bash

sudo nmap -sS $1 | grep open | awk -F '/' '{ print "Port " $1 " is open" }'
