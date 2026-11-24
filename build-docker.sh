#!/bin/bash
cd resources/nginx-ui/
rm nginx-ui-linux-64.tar.gz
wget https://github.com/0xJacky/nginx-ui/releases/download/v3.0.7/nginx-ui-linux-64.tar.gz
tar zxvfp nginx-ui-linux-64.tar.gz
cd ../../
docker build -t cd/crowdsec-openresty:1.31.9.1-alpine . --no-cache
