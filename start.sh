#!/bin/bash
if [ ! -d "/var/opt/CrushFTP9_PC/users/MainUsers/crushadmin" ]; then
    java -jar CrushFTP.jar -a "crushadmin" "password"
    echo crushadmin created
fi

java -jar CrushFTP.jar -d


