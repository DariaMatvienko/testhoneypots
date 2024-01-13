#! /bin/sh
apt install iptables python3-pip
pip3 install wldhx.yadisk-direct
OUTPUT="$(yadisk-direct https://disk.yandex.ru/d/T-Mtv8JsL1pJsA)"
wget "${OUTPUT}" -O labs.zip
unzip labs.zip
read -p "Enter network pnet0 (if 192.168.... print «0»,if 172...., print «1» ): " input
if [$input –eq 0]
  ip address add 172.16.0.10/24 dev pnet5
  iptables –t nat –A POSTROUTING –o pnet0 –s 172.16.0.0/24 –j MASQUERADE
  cp /root/labtest192.unl /opt/unetlab/labs
else
  ip address add 192.168.0.10/24 dev pnet5
  iptables –t nat –A POSTROUTING –o pnet0 –s 192.168.0.0/24 –j MASQUERADE
  cp /root/labtest172.unl /opt/unetlab/labs
fi
exit 0
