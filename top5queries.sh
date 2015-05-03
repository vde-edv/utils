#!/bin/sh

# get top-5 queries by number of calls
# see https://www.youtube.com/watch?v=Zofzid6xIZ4#t=04m10s 19:27
# -i device 
# -c number exit after number of packets
# -s Snarf  snaplen bytes of data from each packet rather than the default of 65535 bytes

  tcpdump -i lo -c 100000 -s 1000 -A -n -p port 3306  \
| sed  -e'/[sS][eE][lL][eE][cC][tT]/!d' \
       -e's/\/\*.*\*\///g' \
       -e's/.*\(select.*\)/\1/gI' \
| sort \
| uniq -c \
| sort -r -n -k 1,1 \
| head -5


