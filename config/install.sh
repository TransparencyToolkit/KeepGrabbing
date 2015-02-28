#!/bin/bash

apt-get install sudo tor elasticsearch gnumeric build-essential unzip rsync proxychains gnupg evince libreoffice emacs-nox curl make libssl-dev

wget -P /home/gh https://www.torproject.org/dist/torbrowser/4.0.3/tor-browser-linux64-4.0.3_en-US.tar.xz
cd /home/gh
tar -xvJf tor-browser-linux64-4.0.3_en-US.tar.xz
rm tor-browser-linux64-4.0.3_en-US.tar.xz
mkdir data
mkdir tools

echo 'rvm_path="/home/gh/.rvm"' >> ~/.rvmrc
\curl -sSL get.rvm.io | bash -s stable
source /home/gh/.rvm/scripts/rvm
rvm autolibs disable
rvm install 2.1.3
rvm use 2.1.3
gem install rails -v 4.1.7

cd
curl -L -O https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.3.4.zip
unzip elasticsearch-1.3.4.zip
