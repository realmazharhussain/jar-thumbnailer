#!/bin/bash
if [ "$UID" = 0 ]; then
  echo "Uninstalling ..."
  [ -z "$PREFIX" ] && PREFIX=/usr/local
  [ -z "$DESTDIR" ] && DESTDIR=/
  rm -f "$DESTDIR"/"$PREFIX"/bin/jar-thumbnailer
  rm -f "$DESTDIR"/"$PREFIX"/share/thumbnailers/jar.thumbnailer 
  echo "Done."
else
  echo "Plz, run this script as root!"
fi
