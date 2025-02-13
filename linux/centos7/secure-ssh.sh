#!/bin/bash
#author lily
#creates new ssh user using $1 parameter
#adds public key from local repo or curled from remote repo
sudo useradd -m -d /home/sys265 -s /bin/bash sys265

sudo mkdir -p /home/sys265/.ssh

sudo chmod 777 ~/TechJournal/linux/public-keys/id_rsa.pub

sudo cp ~/TechJournal/linux/public-keys/id_rsa.pub /home/sys265/.ssh/authorized_keys

sudo chmod 700 /home/sys265/.ssh
sudo chmod 600 /home/sys265/.ssh/authorized_keys

sudo chown -R sys265:sys265 /home/sys265/.ssh

echo "User sys265 setup with SSH key"
