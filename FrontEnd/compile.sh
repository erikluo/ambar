#!/bin/bash

cd /mnt
source /usr/local/.nvm/nvm.sh
echo "#####"
cat /etc/hosts
echo "***"
nvm install v6.9.1
npm install
npm run compile
#npm run deploy:prod
