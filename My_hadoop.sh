#sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt-get update

#### Working script for VM ########
#sudo apt-get -y install git 
#sudo apt-get -y install python2.7 python-pip python-dev
#sudo apt-get -y install ipython ipython-notebook
#sudo -H pip install --upgrade pip
#sudo -H pip install jupyter

## Mesos ###

#sudo apt-get -y install tar wget git
sudo apt-get -y install openjdk-8-jdk
#sudo apt-get -y install autoconf libtool
#sudo apt-get -y install build-essential python-dev libcurl4-nss-dev libsasl2-dev libsasl2-modules maven libapr1-dev libsvn-dev


## New 
sudo apt-get install -y curl python-setuptools python-pip python-dev python-protobuf

# zookeeper
sudo apt-get install -y zookeeperd
sudo echo 1 | dd of=/var/lib/zookeeper/myid

# install mesos
sudo curl -fL http://downloads.mesosphere.io/master/ubuntu/14.04/mesos_0.19.0~ubuntu14.04%2B1_amd64.deb -o /tmp/mesos.deb
sudo  dpkg -i /tmp/mesos.deb

sudo mkdir -p /etc/mesos-master
sudo touch  /etc/mesos-master/registry
sudo chmod 777 /etc/mesos-master/registry
sudo echo in_memory | dd of=/etc/mesos-master/registry

# marathon
sudo curl -fL http://downloads.mesosphere.io/marathon/marathon_0.5.0-xcon2_noarch.deb -o /tmp/marathon.deb
sudo dpkg -i /tmp/marathon.deb

# Downloaded mesos from git clone https://git-wip-us.apache.org/repos/asf/mesos.git
#### Working script for VM ########

