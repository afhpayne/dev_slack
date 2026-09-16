config() {
  NEW="$1"
  OLD="$(dirname $NEW)/$(basename $NEW .new)"
  if [ ! -r $OLD ]; then
    mv $NEW $OLD
  elif [ "$(cat $OLD | md5sum)" = "$(cat $NEW | md5sum)" ]; then
    rm $NEW
  fi
}
config etc/opt/brother/scanner/brscan5/brscan5.ini.new
config etc/opt/brother/scanner/brscan5/brsanenetdevice.cfg.new

if [ -x /sbin/ldconfig ]; then
  /sbin/ldconfig
fi
if command -v udevadm >/dev/null 2>&1; then
  udevadm trigger --action=add --subsystem-match=usb
fi
