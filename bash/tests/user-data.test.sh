#!/usr/bin/env bash
script=$1

echo "TEST 1"
$script fvarrui

echo "TEST 2"
$script fran

echo "TEST 3"
echo fran | $script 

echo "TEST 4"
echo fran | $script 
