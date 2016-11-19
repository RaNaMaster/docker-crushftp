#!/bin/bash
if [ ! -d "/var/opt/CrushFTP8_PC/users/MainUsers/crushadmin" ]; then
    s6-setuidgid abc java -jar CrushFTP.jar -a "crushadmin" "password"
    echo crushadmin created
fi

s6-setuidgid abc java -jar CrushFTP.jar -d