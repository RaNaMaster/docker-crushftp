FROM java:openjdk-8-jre

# environment settings
ENV HOME="/config"
#Install CrushFTP
RUN wget "https://www.crushftp.com/early8/CrushFTP8_PC.zip" -O /var/opt/CrushFTP.zip \
    && unzip -q /var/opt/CrushFTP.zip -d /config/ \
    && rm -rf /var/opt/CrushFTP.zip /tmp/*

# add local files
COPY root/ /

# ports and volumes
EXPOSE 8080 21 22
VOLUME /config

ADD ./start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]