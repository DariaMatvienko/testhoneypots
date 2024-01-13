#!bin/sh
OUTPUT="$(yadisk-direct https://disk.yandex.ru/d/numhIM0yvfFCBA)"
wget "${OUTPUT}" -O L2_L3_Cisco.zip
unzip L2_L3_Cisco.zip
cp –a /root/L2_L3_Cisco/. /opt/unetlab/addons/iol/bin
chmod +x /opt/unetlab/addons/iol/bin/Key.py
/opt/unetlab/wrappers/unl_wrapper -a fixpermissions
python3 /opt/unetlab/addons/iol/bin/Key.py
bash dp.sh 
exit 0
