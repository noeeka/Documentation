1、	LNMP安装
执行命令：
wget -c http://soft.vpser.net/lnmp/lnmp1.4.tar.gz && tar zxf lnmp1.4.tar.gz && cd lnmp1.4 && ./install.sh lnmp


修改PHP配置文件
执行命令：
vim /usr/local/php/etc/php.ini

disable_functions=exec
ignore_user_abort = On
max_execution_time = 3600
max_input_time = 3600
memory_limit = 64M
post_max_size = 100M
default_charset = "UTF-8"
cgi.fix_pathinfo=0
upload_max_filesize = 100M
default_socket_timeout = 600

修改NGINX配置文件
执行命令：
vim /usr/local/nginx/conf/nginx.conf
client_max_body_size 50m;

修改mysql配置文件
执行命令：
mkdir /etc/mysql
cp /etc/my.cnf /etc/mysql/my_back.cnf

重启lnmp
执行命令：
lnmp restart

2、	安装python2.7
默认情况下，系统系带python，故此步骤可省略，但是需要安装pip组件
执行命令：
wget https://bootstrap.pypa.io/get-pip.py && python get-pip.py
安装运行python所需的全部组件
执行命令：
pip install bs4 && pip install BeautifulSoup && pip install request && pip install requests
 
安装python对mysql数据库的支持
执行命令：
apt-get install python-mysqldb

3、	安装ffmpeg
安装视频编解码服务
执行命令：

echo 'deb http://ftp.uk.debian.org/debian jessie-backports main'>>/etc/apt/sources.list && apt-get install ffmpeg
4、	安装MQTT
针对Debian9，安装过程如下
执行命令：
apt-get update && apt-get install lksctp-tools && apt-get install erlang && wget http://emqtt.com/static/brokers/emqttd-debian9-v2.3.7_amd64.deb && dpkg -i emqttd-debian9-v2.3.7_amd64.deb && service emqttd start

针对Debian8，安装过程如下
执行命令：
wget http://emqtt.com/static/brokers/emqttd-debian7-v2.3.7_amd64.deb && dpkg -i emqttd-debian7-v2.3.7_amd64.deb && service emqttd start

执行命令：
netstat -pan|grep 18083

5、	安装crontab
默认情况下，系统自带crontab，需要将定时脚本导入服务
执行命令：
crontab -e

1 */8 * * *  python /home/wwwroot/default/lib/python/crawlTraffic.py
* * * * * php /home/wwwroot/default/cron/crawlMap.php
* * * * * python /home/wwwroot/default/lib/python/crawlNews.py
* * * * * python /home/wwwroot/default/lib/python/crawlWeather.py

6、	安装supervisor
安装系统守护进程服务
执行命令：
apt-get install supervisor && echo '[program:app]
command=/usr/bin/python2.7 /home/wwwroot/default/lib/python/messageHandle.py
autostart=true
autorestart=true
directory=/home/wwwroot/default/lib/python
user=root'>/etc/supervisor/conf.d/app.conf && supervisorctl reload && supervisorctl start app
7、	导入基础数据
将数据库脚本放置在指定目录（假设/home/wwwroot/default下）
执行命令：
mysql -uroot -proot <  /home/wwwroot/default/mc.sql


8、	asterisk部署安装
将压缩文件放置在指定目录下（假设是根目录/）
执行命令：
tar xjf rootfs.tar.bz2 && ./rootfs/usr/share/install.sh && cp -rf rootfs/* /

配置数据库文件
执行命令：
vi /etc/odbc.ini 

Database=management 
UserName=sipserver 
Password=123456


系统加载服务
执行命令：
systemctl daemon-reload

设置开机启动
执行命令：
systemctl enable asterisk
 
启动服务
执行命令：
systemctl start asterisk


