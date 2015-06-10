#!/usr/bin/env bash

# Add Oracle Java Repo
sudo add-apt-repository ppa:webupd8team/java  -y

# update apt
sudo apt-get update

# Install java

#accept the licenses
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections && echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
sudo apt-get install --with-recommends software-properties-common -y
sudo apt-get install --with-recommends oracle-java8-installer -y
sudo apt-get install oracle-java8-set-default -y

JAVA_HOME=/usr/lib/jvm/java-8-oracle
echo "JAVA_HOME=$JAVA_HOME" >> /etc/environment
echo "export JAVA_HOME=$JAVA_HOME" >> /etc/bash.bashrc 

#Install Aurelia requirements
sudo apt-get install git -y
sudo apt-get install nodejs -y
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo apt-get install npm -y
sudo npm install -g gulp
sudo npm install -g jspm
sudo npm install -g live-server

#Install Leinigen for Clojure
sudo /usr/bin/wget https://raw.github.com/technomancy/leiningen/stable/bin/lein -O /usr/bin/lein 
sudo /bin/chmod a+x /usr/bin/lein

