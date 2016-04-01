# myscripts
#!/bin/bash
sudo apt-get update
wget -qO- https://get.docker.com/ | sh


sudo docker run --name myjenkins -d -p 8080:8080 -p 50000:50000 -v /var/jenkins_home preetick/jenkins-devops:v5
