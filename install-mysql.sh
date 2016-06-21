#!/bin/bash
apt-get update

# set up a silent install of MySQL

sudo mkdir -p /opt/dbscript
cd /opt/dbscript && wget https://adidaswarstorage.blob.core.windows.net/sqlfileupload/myarenadb_script.sql
export DEBIAN_FRONTEND=noninteractive
echo mysql-server-5.6.13 mysql-server/root_password password welcome123 | debconf-set-selections
echo mysql-server-5.6.13 mysql-server/root_password_again password welcome123 | debconf-set-selections

# install the LAMP stack
apt-get -y install mysql-server 

sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

sudo service mysql restart
mysql -u root -pwelcome123 < /opt/dbscript/myarenadb_script.sql
echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'welcome123'; flush privileges;" | mysql -u root -pwelcome123
#echo "CREATE DATABASE sonar CHARACTER SET utf8 COLLATE utf8_general_ci; CREATE USER 'sonar' IDENTIFIED BY 'sonar';GRANT ALL PRIVILEGES ON sonar.* TO 'sonar'@'%' IDENTIFIED BY 'sonar'; GRANT ALL ON sonar.* TO 'sonar'@'localhost' IDENTIFIED BY 'sonar'; flush privileges;" | mysql -u root -pwelcome123
