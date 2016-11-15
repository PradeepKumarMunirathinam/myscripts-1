#!/bin/sh
sudo apt-get update -y
wget -qO- https://get.docker.com/ | sh
#sudo docker run --name jenkins  -p 8080:8080  jenkins --prefix=/jenkins
sudo docker run -d --name jenkins  -p 8080:8080  jenkins --prefix=/jenkins
#sudo docker run -d -p 8080:8080 
