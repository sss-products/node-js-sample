#!/bin/bash

cd /var/www/html/

sudo npm install

sudo systemctl restart cms.service
