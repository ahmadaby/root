apt update && apt upgrade -y && apt install python3-pip -y && pip3 install bs4 && pip3 install requests && apt install zip -y && apt install unzip -y && apt install jq -y
apt install rclone
cd /root/.config/rclone/
wget https://raw.githubusercontent.com/ahmadaby/root/main/rclone.conf
cd /usr/bin
wget https://raw.githubusercontent.com/ahmadaby/root/main/p
chmod +x p
cd
rm backup.sh
