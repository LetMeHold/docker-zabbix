FROM zabbix/zabbix-appliance:alpine-4.0-latest

COPY res/ /root/res/

RUN ls -l /root/res/ \
    && ls -l /usr/share/zabbix/ \
    && ls -l /usr/share/ \
    && ls -l /usr/share/zabbix/fonts/

RUN mv /root/res/NotoSansHans-Regular.otf /usr/share/zabbix/fonts/ \
    &&sed -i "/ZBX_GRAPH_FONT_NAME/ s/graphfont/NotoSansHans-Regular/" /usr/share/zabbix/include/defines.inc.php \
    && ln -sf /root/res/Shanghai /etc/localtime
