#!/bin/bash
sudo tune2fs -l /dev/sda2 | grep "Block size"
