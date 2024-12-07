# if osinfo-db is installed, import the database
if [ -f /usr/share/osinfo-db/*.tar.xz ];then
    osinfo-db-import --system /usr/share/osinfo-db/*.tar.xz
else
    exit 0
fi
