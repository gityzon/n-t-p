#！警告：replit免费版中所有代码都是公开可见的，建议使用edu版部署
#如何更新OneNav-Extend：
#1.停止运行，备份数据（下载data目录中的几个db3格式的文件，如果自己有改php的文件也记得自行备份）
#2.删除所有文件，只保留nginx和main.sh
#3.再次RUN，不要安装，将db3文件上传到data目录中，然后直接访问你的站点，everything going well~

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

php -S 0.0.0.0:8000 -t . &
nginx -g 'daemon off;'
