#!/bin/bash

echo ""

echo "-----Analyse logs-----"

echo ""

cat $1 | awk -F ' ' -f method.awk

echo ""

cat $1 | awk -F ' ' -f code.awk

echo ""

cat $1 | awk -F '\\[|:' -f dayToDayCounter.awk
