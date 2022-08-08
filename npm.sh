#!/bin/bash

cd /var/www/html/

sudo npm install

sudo pm2 restart cms
