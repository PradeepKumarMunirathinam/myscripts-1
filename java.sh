#!/bin/sh  
chmod 600 /home/lx_jeralron/.ssh/authorized_keys
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

#Tomcat installation
if [ -d /opt/tomcat ]
then
rm -rf /opt/tomcat
mkdir /opt/tomcat
else
mkdir /opt/tomcat
fi
cd /opt/tomcat/
wget http://apache.cs.utah.edu/tomcat/tomcat-8/v8.0.36/bin/apache-tomcat-8.0.36.zip
wget https://www.apache.org/dist/tomcat/tomcat-8/v8.0.36/bin/apache-tomcat-8.0.36.zip.md5
cat /opt/tomcat/apache-tomcat-8.0.36.zip.md5
md5sum /opt/tomcat/apache-tomcat-8.0.36.zip
unzip apache-tomcat-8.0.36.zip
cd /opt/tomcat/apache-tomcat-8.0.36/bin/
chmod 700 *.sh
chown -R lx_jeralron /opt/tomcat/
cd /opt/tomcat/apache-tomcat-8.0.36/webapps
#wget https://adidaswarstorage.blob.core.windows.net/warfileupload/MyArenaREST.war
cd /opt/tomcat/apache-tomcat-8.0.36/bin/
export JAVA_OPTS="-Dspring.profiles.active=dev"
sudo sh /opt/tomcat/apache-tomcat-8.0.36/bin/startup.sh

