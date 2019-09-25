echo "*** Welcome to Sotfware All server ***"
echo "***           Server all           ***"
echo "*** 1.Nginx"
echo "*** 2.Docker"
echo "*** 3.Docker-compose\n"

echo "*** 1.Nginx"
#sudo apt-get update
#sudo apt-get install nginx
echo "*** Install Nginx ok..."

echo "*** 2.Docker"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
#apt-cache policy docker-ce
sudo apt-get install -y docker-ce
echo "*** Install Docker ok..."

echo "*** 2.Docker-compose"
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
echo "*** Install Docker ok..."


sudo usermod -aG docker ${USER}
sudo chmod 777 /var/run/docker.sock

# echo "*** start docker nginx ***"
# export WORKDIR=$(pwd)

# echo "\n############### start docker Nginx  ###############"
# sudo docker-compose -f ${WORKDIR}/server-nginx/docker-compose.yml up -d

# echo "\n*** remove docker none all ***"
# sudo docker rmi $(docker images | grep '<none>' | awk {'print$3'})
