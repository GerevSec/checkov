#!/bin/bash
#  ____          _       __ _
# |  _ \ ___  __| | ___ / _(_)_ __   ___
# | |_) / _ \/ _` |/ _ \ |_| | '_ \ / _ \
# |  _ <  __/ (_| |  __/  _| | | | |  __/
# |_| \_\___|\__,_|\___|_| |_|_| |_|\___|
##########################################
# This script is used to install Redefine
##########################################

export REDEFINE_CUSTOMER_ID="aa8c136d78f5392f55eb38f6fc1e3fec"

function install_redefine() {
  curl -sL https://redefine.dev/install | bash
}

function uninstall_redefine() {
  curl -sL https://redefine.dev/uninstall | bash
}

if [ "$1" == "--help" ]; then
  echo "Redefine installation script.
  Usage:
    ./redefine.sh [--uninstall]
  Options:
    --uninstall: Uninstalls Redefine"
  exit 0
elif  [ "$1" == "--uninstall" ]; then
  uninstall_redefine
else
  install_redefine
fi
