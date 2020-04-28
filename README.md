#### PULL镜像
docker pull letmehold/zabbix:[version]
#### 启动容器
docker run --name zabbix \\  
　　-e PHP_TZ="Asia/Shanghai" \\  
　　-e ZBX_SERVER_NAME="My Zabbix" \\  
　　-v [/path/to/mysql]:/var/lib/mysql \\  
　　-p 10051:10051 \\  
　　-p 80:80 \\  
　　-dt letmehold/zabbix:[version]
#### 登录容器
docker exec -ti zabbix bash
#### 退出容器
exit
#### 浏览器访问
http://[your ip address]:80
#### 初始用户
Admin/zabbix
#### 特别说明
宿主机的zabbix-agent应该配置该容器的IP为zabbix-server
而其他机器则配置宿主机的IP为zabbix-server
