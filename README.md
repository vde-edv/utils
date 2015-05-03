# utils
some utities for my private use, but might be useful for others as well.

under construction ...

## utils/top5queries.sh

shell script to get your current 5 most frequent SELECT queries without touching your db server by
* starting tcpdump on loopback device and port 3306 (mysql) to catch 100000 packets
* piping output through sed to remove everything that does not include "SELECT" (case insensitive)
* sorting resulting query stings by count
* returning top 5 queries

Should work with multiline queries if sql client removes them (mysql client does.)
The code is taken from Mark Callaghan, see https://www.youtube.com/watch?v=Zofzid6xIZ4#t=04m10s 19:27

FIXME
* no fancy script options, please adjust the script as you need it





