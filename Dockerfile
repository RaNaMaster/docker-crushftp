FROM lsiobase/xenial
#FROM java:openjdk-8-jre

#Install dependencies
RUN apt-get update; \
apt-get -y install uuid pwgen openjdk-7-jre-headless wget unzip;

#Install CrushFTP
RUN wget "https://www.crushftp.com/early8/CrushFTP8_PC.zip" -O /var/opt/CrushFTP.zip \
    && unzip -q /var/opt/CrushFTP.zip -d /var/opt/ \
    && rm -rf /var/opt/CrushFTP.zip /tmp/*

WORKDIR /var/opt/CrushFTP8_PC

# ports and volumes
EXPOSE 8080 21 22

ADD ./start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]