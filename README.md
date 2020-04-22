#### PULL镜像
docker pull letmehold/zabbix:appliance
#### 启动容器
docker run --name zabbix-server \\  
-e PHP_TZ="Asia/Shanghai" \\  
-v </path/to/mysql>:/var/lib/mysql \\  
-p 10051:10051 \\  
-p 80:80 \\  
-dt letmehold/zabbix:<version>
#### 登录容器
docker exec -ti zabbix-server bash
#### 退出容器
exit
#### 浏览器访问
http://[your ip address]:80
#### 初始用户
Admin/zabbix  
