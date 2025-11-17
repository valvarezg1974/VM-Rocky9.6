#!/bin/bash

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
yum -y install gcc make gcc-c++ kernel-devel-`uname -r` perl grub2-tools net-tools
yum -y update
#yum -y install epel-release.noarch
#rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
#yum -y install httpd* php mariadb*
sudo dnf config-manager --set-enabled crb
sudo dnf makecache
sudo dnf groupinstall -y "Development Tools"
sudo dnf install -y epel-release
sudo dnf install -y kernel-headers kernel-devel dkms gcc make perl elfutils-libelf-devel


#systemctl start httpd
#systemctl enable httpd
#systemctl disable firewalld
#echo "Servidor Web creado con PACKER" > /var/www/html/index.html
#sudo usermod -G vboxsf vagrant