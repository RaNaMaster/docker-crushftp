FROM lsiobase/xenial

# environment settings
ARG DEBIAN_FRONTEND="noninteractive"
ENV HOME="/config"

#Install dependencies
RUN apt-get update; \
apt-get -y install uuid pwgen openjdk-8-jre wget unzip;

#Install CrushFTP
RUN wget "https://www.crushftp.com/early8/CrushFTP8_PC.zip" -O /var/opt/CrushFTP.zip \
    && unzip -q /var/opt/CrushFTP.zip -d /config/ \
    && rm -rf /var/opt/CrushFTP.zip /tmp/*

# add local files
COPY root/ /

# ports and volumes
EXPOSE 8080 21 22
VOLUME /config