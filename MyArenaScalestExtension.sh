#!/bin/sh

if [ -d /home/lx_jeralron/.pem ]
then
 :
else
 mkdir /home/lx_jeralron/.pem
fi

if [ -f /home/lx_jeralron/.pem/adidas.pem ]
then
 rm -rf /home/lx_jeralron/.pem/adidas.pem
else
 touch /home/lx_jeralron/.pem/adidas.pem
fi

echo "-----BEGIN RSA PRIVATE KEY-----
Proc-Type: 4,ENCRYPTED
DEK-Info: DES-EDE3-CBC,EF633C91093A1693

4XEnnBaA88htcBMmldMYGiByzgaUDaOfC5u8kwwuLqZSnb0fP4g84dyxvSegHP+R
ngtWaxlM0q3EO6V0WTl1OwmhQZJ9F5XegjjG3abxV2LMogz2swuvCrbKOfbGepxC
cFCCkDJ10Thh9f3Cmn3YRb1ZZSqZ0P7ntNuiQ7+PfOcf3Ltu2uSd33J8zXuD6Vu6
gOE/6x9nLNNsSoAONjKn0TRSqX+HBNj/RT9rOIFiiEtD5hq8Oi4/6SnTueTV6SOM
qHZ0u6cUUPdddFc3qZGcKV5s5DUDdi4wRzzjvG5QUFlnRSPz5D3eGTx3eXW/Nsog
o6vT6FBQLFqOy1lQFZU2j3NpHtxkkdBsfXpWA1JUvtWvI6IJbx6hC6/hHla27hYr
CCyANuQ8gii3cfCEbvGQSCcziEBiQRIuBEErAnZ+P7kjeyJaZu3oHULEcWDlYxk1
EaLGxh3BEbZOixN6ItwScM/CUyQZl2kn6MWgtafTSj4jlQVP5kqRBcJLJrlDneM2
pE3cqMNDc/oYSg86bgD5jWh/8kALCht9/fi1yAiFMhQyaEYqebII6w7GwsmqS0Qn
GHJ5sXHbnazogLuRLD/5tQC7oePTP4iDHuycIAHZB6IXxDQQiBTIMVowWrNxPlpq
6S+WGIEnh0ht40aVrue0j0Obh0fjnhPObZK5zqrS3ULu7D3dDlqPZWkQcDtHnLLA
jGVeADfQeS6TH/V9wZGNbDJjsqPGbq/rsauBQ4krObPzULCQUksqfphaaINkcUTA
9EPRIKxCucm1foIKW0vtGml/ytFYO7Y9g4hiFgFo7y4=
-----END RSA PRIVATE KEY-----

" > /home/lx_jeralron/.pem/adidas.pem
 chmod 500 /home/lx_jeralron/.pem/adidas.pem
 
#Installing Java and Tomcat

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
wget https://myarenaa.blob.core.windows.net/tomcat/apache-tomcat-8.0.36.zip
wget https://myarenaa.blob.core.windows.net/tomcat/apache-tomcat-8.0.36.zip.md5
cat /opt/tomcat/apache-tomcat-8.0.36.zip.md5
md5sum /opt/tomcat/apache-tomcat-8.0.36.zip
unzip apache-tomcat-8.0.36.zip
cd /opt/tomcat/apache-tomcat-8.0.36/bin/
chmod 700 *.sh
chown -R lx_jeralron /opt/tomcat/
cd /opt/tomcat/apache-tomcat-8.0.36/bin/
sed -i "s/# Licensed to the Apache Software Foundation (ASF) under one or more/JAVA_OPTS='-Dspring.profiles.active=prod'/" catalina.sh
sudo sh /opt/tomcat/apache-tomcat-8.0.36/bin/startup.sh

#wget the expectScript and run

cd /home/lx_jeralron/
wget https://raw.githubusercontent.com/PradeepKumarMunirathinam/myscripts-1/MyArena/ScalesetPullWar.exp
chmod 755 ScalesetPullWar.exp
chown -R lx_jeralron ScalesetPullWar.exp
./ScalesetPullWar.exp
