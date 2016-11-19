#!/bin/bash
if [ ! -d "/var/opt/CrushFTP8_PC/users/MainUsers/crushadmin" ]; then
    sudo -u abc java -jar CrushFTP.jar -a "crushadmin" "password"
    echo crushadmin created
fi

sudo -u abc java -jar CrushFTP.jar -d