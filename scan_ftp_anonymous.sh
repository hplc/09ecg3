#!/bin/sh

sudo sysctl net.inet.tcp.keepinit=1000

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
do
echo 192.168.64.$i
ftp -n 192.168.64.$i << EOF
user anonymous teacher@hotdog.com
ls *.jpg
quit
EOF
done

sudo sysctl net.inet.tcp.keepinit=75000
