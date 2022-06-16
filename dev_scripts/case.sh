#!/bin/bash

MomoryStatus=$1

case "$MomoryStatus" in
	"FS" ) { du -sh && date; } > summury.txt ;;

	"DS" ) { df -h && date; } > summury.txt ;;

	"FM" ) { free -m && date; } > summury.txt ;;

	"DFS" ) { du -sh * && date; } > summury.txt ;;
esac
