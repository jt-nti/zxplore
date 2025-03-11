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
