#! /bin/sh
apt install python3-pip
pip3 install wldhx.yadisk-direct
OUTPUT="$(yadisk-direct https://disk.yandex.ru/d/1-ZuBOhsFzmt-Q)"
wget "${OUTPUT}" -O 5.3.11.zip
unzip 5.3.11.zip -d ./upgrade > /dev/null 2>&1
chmod 755 -R upgrade
find upgrade -type f -print0 | xargs -0 dos2unix 2>&1 > /dev/null 2>&1
./upgrade/upgrade
reboot
exit 0
