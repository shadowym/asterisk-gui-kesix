#!/bin/bash
#
# 
# Description : Prepare deploy packages for asterisk-gui-kesix. 
# Author : vassilux
# Last modified : 2014-11-22 14:37:47 
#

set -e

VER_MAJOR="1"
VER_MINOR="0"
VER_PATCH="6"

DEPLOY_DIR="asterisk-gui-kesix"
DEPLOY_FILE_NAME="asterisk-gui-kesix.tar.gz"

if [ -d "$DEPLOY_DIR" ]; then
    rm -rf  "$DEPLOY_DIR"
fi
#
if [ -f "$DEPLOY_FILE_NAME" ]; then
    rm -rf  "$DEPLOY_FILE_NAME"
fi
#
#
mkdir "$DEPLOY_DIR"
mkdir "$DEPLOY_DIR/config"
mkdir "$DEPLOY_DIR/scripts"
cp -aR config/* "$DEPLOY_DIR/config"
cp -aR scripts/* "$DEPLOY_DIR/scripts"
cp -aR Makefile "$DEPLOY_DIR"
cp -aR config.* "$DEPLOY_DIR"
cp -aR configure* "$DEPLOY_DIR"
cp -aR acinclude.m4 "$DEPLOY_DIR"
cp -aR install-sh "$DEPLOY_DIR"
cp -aR LICENSE "$DEPLOY_DIR"


#tar cvzf "${DEPLOY_FILE_NAME}" "${DEPLOY_DIR}"

#rm -rf "$DEPLOY_DIR"


echo "Deploy build complete."
echo "Live well buddy."
