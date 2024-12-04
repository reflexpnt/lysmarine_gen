#!/bin/bash -e

exit 0  # not a value even in full version

if [ "$BBN_KIND" == "LITE" ] ; then
  exit 0
fi

apt-get clean

install -v "$FILE_FOLDER"/jtides.desktop /usr/local/share/applications/

install -d -m 755 "/usr/local/share/jtides"

wget -q -O - https://arachnoid.com/JTides/JTides.jar > /usr/local/share/jtides/JTides.jar
