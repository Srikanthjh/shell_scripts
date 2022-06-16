#!/bin/bash

ram=$(free -mt | grep "Total:" | awk '{print $4/$2 * 100}')

echo " Percentage of free RAM is $ram %"
