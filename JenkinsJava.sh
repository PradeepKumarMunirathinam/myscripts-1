#!bin/bash
cd

#Installing Git in the machine
sudo apt-get install git
sudo apt-get update
#Installing Java 1.8
if [ -d /opt/java/ ]
then
rm -rf /opt/java
mkdir /opt/java
else
mkdir /opt/java 
fi 
cd /opt/java
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.tar.gz"
tar -zxvf jdk-8u45-linux-x64.tar.gz
cd jdk1.8.0_45/
update-alternatives --install /usr/bin/java java /opt/java/jdk1.8.0_45/bin/java 100
update-alternatives --config java
update-alternatives --install /usr/bin/javac javac /opt/java/jdk1.8.0_45/bin/javac 100
update-alternatives --config javac
update-alternatives --install /usr/bin/jar jar /opt/java/jdk1.8.0_45/bin/jar 100
update-alternatives --config jar
export JAVA_HOME=/opt/java/jdk1.8.0_45/
export JRE_HOME=/opt/java/jdk1.8.0._45/jre
export PATH=$PATH:/opt/java/jdk1.8.0_45/bin:/opt/java/jdk1.8.0_45/jre/bin

#Installing Jenkins
sudo apt-get -y install jenkins
cd
#installing mysql and sonar
export DEBIAN_FRONTEND=noninteractive
echo mysql-server-5.6 mysql-server/root_password password welcome123 | debconf-set-selections
echo mysql-server-5.6 mysql-server/root_password_again password welcome123 | debconf-set-selections

# install the LAMP stack
sudo apt-get -y install mysql-server 

sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

sudo service mysql restart
echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'welcome123'; flush privileges;" | mysql -u root -pwelcome123

echo "CREATE DATABASE sonar CHARACTER SET utf8 COLLATE utf8_general_ci; CREATE USER 'sonar' IDENTIFIED BY 'sonar';GRANT ALL PRIVILEGES ON sonar.* TO 'sonar'@'%' IDENTIFIED BY 'sonar'; GRANT ALL ON sonar.* TO 'sonar'@'localhost' IDENTIFIED BY 'sonar'; flush privileges;" | mysql -u root -pwelcome123
