FROM zabbix/zabbix-appliance:alpine-4.0-latest

COPY res/ /root/res/

RUN mv /root/res/NotoSansHans-Regular.otf /usr/share/zabbix/fonts/NotoSansHans-Regular.otf \
    &&sed -i "/ZBX_GRAPH_FONT_NAME/ s/graphfont/NotoSansHans-Regular/" /usr/share/zabbix/include/defines.inc.php \
    && ln -sf /root/res/Shanghai /etc/localtime
