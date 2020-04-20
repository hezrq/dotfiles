#!/bin/sh

if [ -f /etc/os-release ]; then
  OS_RELEASE=`cat /etc/os-release`
  case $OS_RELEASE in
    *ubuntu* ) DIST="Ubuntu";;
    *debian* ) DIST="Debian";;
    *centos* ) DIST="CentOS";;
    *fedora* ) DIST="Fedora";;
    *rhel* ) DIST="RHEL";;
    *arch* ) DIST="ArchLinux";;
    *opensuse* ) DIST="OpenSUSE";;
    * ) echo "Sorry, We don't support this distribution";;
  esac
else
  echo "Sorry, We cannot find /etc/os-release"
fi

echo $DIST
