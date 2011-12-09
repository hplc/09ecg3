#!/bin/sh

ftp -n $1 << EOF
user anonymous teacher@hotdog.com
ls *.jpg
quit
EOF
