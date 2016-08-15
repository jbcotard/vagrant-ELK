#!/usr/bin/env bash
#
# This bootstraps ELK setup
#
set -e

# Do the initial apt-get update
echo "Initial apt-get update..."
apt-get update >/dev/null

# Install wget if we have to (some older Ubuntu versions)
echo "Installing wget..."
apt-get install -y wget >/dev/null

# Install jre7
echo "Installing jre7..."
apt-get install -y openjdk-7-jre

# Install apache2
echo "Installing apache2..."
apt-get install -y apache2

# Install ELK
echo "Installing ELK..."
cd /vagrant/bin
if [ ! -d /vagrant/bin/logstash-2.2.2 ]
then
  tar -xf logstash-2.2.2.tar
fi
echo "logstash installed"

if [ ! -d /vagrant/bin/elasticsearch-2.2.1 ]
then
  tar -xf elasticsearch-2.2.1.tar
fi
echo "elasticsearch installed"

if [ ! -d /vagrant/bin/kibana-4.4.2-linux-x64 ]
then
  tar -xf kibana-4.4.2-linux-x64.tar
fi
echo "kibana installed"

# start stack ELK 
/vagrant/startELK.sh
