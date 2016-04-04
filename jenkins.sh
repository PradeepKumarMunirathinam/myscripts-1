# myscripts
#!/bin/bash

#installing Docker
sudo apt-get update
wget -qO- https://get.docker.com/ | sh
#Adding users to docker group
sudo usermod -aG docker $USER



# The docker run script which will get executed after system restart
sudo mkdir /home/scripts
sudo wget -O /home/scripts/run-docker-jenkins.sh https://raw.githubusercontent.com/arijitbardhan/myscripts/master/run-docker-jenkins.sh?_sm_au_=ijHD6qR5z0RSTzsH
sudo chmod 777 -R /home/scripts

sudo wget -O /etc/init.d/jenkins-startup https://raw.githubusercontent.com/arijitbardhan/myscripts/master/start-jenkins?_sm_au_=ijHD6qR5z0RSTzsH
sudo chmod ugo+x /etc/init.d/jenkins-startup 
sudo update-rc.d jenkins-startup defaults

#sudo init 6
