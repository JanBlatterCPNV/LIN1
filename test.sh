#!/bin/.sh

IP =10.10.10.114
netmask =255.255.255.0


sudo hostnamectl set-hostname SRV-LIN2-02
sudo ifconfig eth0 $IP netmask $NETMASK
sudo route add default gw 10.10.10.2 eth0
sudo nano /etc/resolv.conf

nameserver 10.10.10.11
nameserver 10.10.10.2
