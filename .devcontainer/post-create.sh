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

zowe plugins install @zowe/zos-ftp-for-zowe-cli@zowe-v3-lts

#
# Set up the zowe user configuration file
#
zowe config init --global-config --user-config --overwrite --for-sure --prompt false
zowe config set "profiles" "{}" --global-config --user-config --json
export ZXPLORE_PROFILE=$(jq -c . .devcontainer/zxplore.profile.json) && zowe config set "profiles.zxplore" "$ZXPLORE_PROFILE" --global-config --user-config --json
zowe config set "defaults" '{"zosmf":"zxplore.zosmf","tso":"zxplore.tso","ssh":"zxplore.ssh"}' --global-config --user-config --json
