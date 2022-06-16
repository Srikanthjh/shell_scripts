#!/bib/bash

freeM () {
	(free -h)}
diskU () {
	(du -h)}
diskF () {
        (df -h)}


{ echo "--free memory--" && freeM; } >> memstatus.txt


{ echo "--disk usage--" && diskU; } >> memstatus.txt


{ echo "--disk free--" && diskF; } >> memstatus.txt
