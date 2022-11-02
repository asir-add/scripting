#!/bin/bash
EURO=166.386
pesetas=`echo $EURO\*$1 | bc`
echo $1 euros son $pesetas pesetas
