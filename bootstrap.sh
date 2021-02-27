#!/bin/bash

# [task 1]Enable ssh password authentication
echo "[task 1] Enable ssh password authentication"
sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sed -i 's/.*PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config
systemctl reload sshd

# [task 2]Set Root password 
# need to repet password for two times (new password and retype password, we pipe password two times in to the root ) 
# >/dev/null 2>&1 dont give me error if it fails (https://stackoverflow.com/questions/10508843/what-is-dev-null-21)
echo "[task 2] Set root password"
echo -e "admin\nadmin" | passwd root >/dev/null 2>&1

# [task 4]Update bashrc file
echo "[task 4]Update bashrc file"
echo "export TERM=xterm" >> /etc/bashrc


# [task 7] qulaity of life improvements
sudo apt-get update
#sudo apt-get upgrade
sudo apt-get install bash-completion
sudo apt-get install sshpass

cat >>/etc/hosts<<EOF
172.16.16.100   aManager.example.com   aManager
172.16.16.101   aworker.example.com    aworker
EOF
