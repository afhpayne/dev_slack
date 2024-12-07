# if osinfo-db-tools is installed, import the database
PRGNAM=osinfo-db
VERSION=${VERSION:-20240701}
if [ -f "/usr/bin/osinfo-db-import" ]; then
    osinfo-db-import --system /usr/share/osinfo-db/$PRGNAM-$VERSION.tar.xz
else
    exit 0
fi
