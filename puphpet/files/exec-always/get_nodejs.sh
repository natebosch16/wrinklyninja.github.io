#!/bin/sh
# Install Node.js: instructions from
# <https://github.com/nodesource/distributions#usage-instructions>

sudo apt-get -y install curl
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get -y install nodejs nodejs-legacy