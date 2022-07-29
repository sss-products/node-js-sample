#!/bin/bash

cd /var/www/html/node-js-sample/

sudo npm install

systemctl restart node.service
