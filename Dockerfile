FROM zabbix/zabbix-appliance:alpine-4.0.10

COPY res/ /root/res/

RUN mv /root/res/NotoSansHans-Regular.otf /usr/share/zabbix/assets/fonts/NotoSansHans-Regular.ttf \
    &&sed -i "/ZBX_GRAPH_FONT_NAME/ s/DejaVuSans/NotoSansHans-Regular/" /usr/share/zabbix/include/defines.inc.php \
    && ln -sf /root/res/Shanghai /etc/localtime
