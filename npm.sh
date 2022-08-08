#!/bin/bash

cd /var/www/html/

sudo npm install

sudo systemctl restart node.service
