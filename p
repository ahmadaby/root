#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
IP=$(wget -qO- icanhazip.com);
date=$(date +"%Y:%m:%d-%T")

read -rp "File : " -e okee


mkdir /root/backup

cp $okee backup/

cd /root
zip -r ID-$date.zip backup > /dev/null 2>&1
rclone copy /root/ID-$date.zip dr:backup/
url=$(rclone link dr:backup/ID-$date.zip)
id=(`echo $url | grep '^https' | cut -d'=' -f2`)
link="https://drive.google.com/u/4/uc?id=${id}&export=download"
clear
echo -e "
The following is a link to your vps data backup file.

IP: $IP
Link: $link
File: $okee

Thank You For Using Our Services
" 
rm -rf /root/backup
rm -r /root/ID-$date.zip

