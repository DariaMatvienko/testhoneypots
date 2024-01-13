#! /bin/sh
apt install nano
nano /etc/network/interfaces
bash intvn5.sh
echo "nameserver 8.8.8.8\nnameserver 8.8.4.4" >> /etc/resolv.conf
systemctl restart networking
OUTPUT="$(systemctl restart networking)"
if  [ $? -eq 0 ]; then
  echo "OK"
else
  echo "${OUTPUT}"
fi
exit 0
