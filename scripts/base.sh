#!/bin/bash

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
sudo yum -y install gcc make gcc-c++ kernel-devel-`uname -r` perl grub2-tools net-tools linux-headers-`uname -r`
sudo yum -y update
sudo dnf config-manager --set-enabled crb
sudo dnf makecache
sudo dnf groupinstall -y "Development Tools"
sudo dnf install -y epel-release
sudo dnf install -y kernel-headers kernel-devel dkms gcc make perl elfutils-libelf-devel


sudo usermod -G vboxsf vagrant