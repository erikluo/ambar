#!/bin/bash

cd /mnt
source /usr/local/.nvm/nvm.sh
echo "#####"
cat /etc/hosts
echo "***"
nvm install v5.0.0
npm install
npm run deploy:prod
