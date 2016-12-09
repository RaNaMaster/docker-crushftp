#!/usr/bin/with-contenv bash
#
if [ ! -d "/config/CrushFTP8_PC/users/MainUsers/crushadmin" ]; then
  
    java -jar /config/CrushFTP8_PC/CrushFTP.jar -a "crushadmin" "password" \
    echo crushadmin created \
fi
 java -jar /config/CrushFTP8_PC/CrushFTP.jar -d


