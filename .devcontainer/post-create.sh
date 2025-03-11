#!/usr/bin/env sh
#
# SPDX-License-Identifier: Apache-2.0
#
# set -eu

#
# Install zti terminal emulator 
#
pip3 install ebcdic tnz

#
# Install zowe cli
#
npm install -g prebuild-install
npm install -g @zowe/cli@zowe-v3-lts

zowe plugins install @zowe/cics-for-zowe-cli@zowe-v3-lts @zowe/zos-ftp-for-zowe-cli@zowe-v3-lts

#
# Set up the zowe team configuration file
#
zowe config init --global-config --overwrite --for-sure
zowe config set "autoStore" "false" --global-config
zowe config set "profiles.global_base.secure" "[]" --json --global-config
zowe config set "profiles.global_base.properties.host" "204.90.115.200" --global-config
zowe config set "profiles.global_base.properties.rejectUnauthorized" "false" --global-config
zowe config set "profiles.zosmf.properties.port" "10443" --global-config
zowe config set "profiles.tso.properties.account" "FB3" --global-config
