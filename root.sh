#!/bin/bash
wget -O /etc/ssh/sshd_config "https://sc.vpnstores.net/Korlo/sshd.conf"
/etc/init.d/ssh restart
passwd