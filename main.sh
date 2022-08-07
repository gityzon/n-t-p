#！警告：replit免费版中所有代码都是公开可见的，建议使用edu版部署
#

#!/bin/bash

export PATH="~/nginx/sbin:brook:panindex$PATH"

if [ ! -d "~/nginx" ];then
	\cp -ax .nginx ~/nginx
fi
chmod 777 ~/nginx/sbin/nginx

if [ ! -f "index.php" ];then
  curl -L https://github.com/typecho/typecho/releases/latest/download/typecho.zip -o typecho.zip
unzip typecho.zip
rm -f typecho.zip
fi

php -S 0.0.0.0:8000 -t .
nginx -g 'daemon off;'
