 date > /home/scripts/date.txt

wget -qO- https://get.docker.com/ | sh
sudo docker pull devopsmt/jenkins-dockerindocker:v1
docker run --name myjenkins --privileged=true -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock devopsmt/jenkins-dockerindocker:v1 --prefix=/jenkins 
