#!/bin/sh
# " /bin/sh /Shared/nginx/shtail.sh & " needs to be added to /startapp.sh as the second line
tail -f /logs/proxy_host* | grep -E "([0-9]{1,3}[\.]){3}[0-9]{1,3}" | while read line;
myhomeip=$(wget -qO- https://icanhazip.com/)
do
  domain=`echo ${line:0:80} | grep -m 1 -o -e "[a-z0-9]*\.[a-z0-9]*\.ddns.net" -e "[a-z0-9]*\.ddns.net"`
  ipaddressnumber=`echo $line | grep -o -m 1 -E "([0-9]{1,3}[\.]){3}[0-9]{1,3}" | grep -v "192.168.0.*"`  ##UPDATE grep -v with local network
  length=`echo $line | awk -F ' ' '{print$14}' | grep -m 1 -o '[[:digit:]]*'`
  #device=`echo $line | grep -e ""'('*')'""`
  echo $length
  echo $ipaddressnumber 
  echo $domain
  #echo $dev
  #HomeIP='192.168.0.24' #HomeIP is used to not send your home public ip to keep the number of sends down
  if "$ipaddressnumber" == "$myhomeip";then
    echo "Home IP"
  else
    python $NPMGRAF_HOME/Getipinfo.py "$ipaddressnumber" "$domain" "$length"
  fi
done
reboot
