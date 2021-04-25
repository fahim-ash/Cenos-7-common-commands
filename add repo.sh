#!usr/bin/bash
sudo yum -y install yum-plugin-priorities

sudo sed -i -e "s/\]$/\]\npriority=1/g" /etc/yum.repos.d/CentOS-Base.repo
sudo yum -y install epel-release

sudo sed -i -e "s/\]$/\]\npriority=5/g" /etc/yum.repos.d/epel.repo

# For another way, change to [enabled=0] and use it only when needed

sudo sed -i -e "s/enabled=1/enabled=0/g" /etc/yum.repos.d/epel.repo

# if [enabled=0], input a command to use the repository
# sudo yum --enablerepo=epel install [package]