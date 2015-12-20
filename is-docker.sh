# See: https://docs.docker.com/engine/installation/ubuntulinux/
# See: https://blog.docker.com/2015/07/new-apt-and-yum-repos/
# docker -v -> 2015.12.20 Docker version 1.9.1, build a34a1d5

# add the new gpg key
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
# clear and edit
entry="deb https://apt.dockerproject.org/repo ubuntu-wily main"
echo $entry | sudo tee /etc/apt/sources.list.d/docker.list
# Update the apt package index
sudo apt-get update
# Verify the repository
sudo apt-cache policy docker-engine
# Install Docker
sudo apt-get -y install docker-engine

# Info
sudo docker -v
sudo docker -D info

# Create the docker group and add your user
# -a		append the user to the supplemental GROUPS
# -G GROUPS	new list of supplementary GROUPS
sudo usermod -aG docker $(whoami)

