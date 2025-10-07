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

zowe plugins install @zowe/zos-ftp-for-zowe-cli@zowe-v3-lts @zowe/cics-for-zowe-cli@zowe-v3-lts

#
# Set up JSON schema for the Zowe project team configuration file
#
zowe config schema > zowe.schema.json

#
# Create an empty Zowe project user configuration file
#
# For more information about all the different Zowe config files and
# how they're merged, see
# https://github.com/zowe/zowe-cli/blob/master/docs/How_config_files_are_merged.md
#
# The secure array should not be necessary in the user config file
# however the Zowe Explorer does not currently work without it due to
# https://github.com/zowe/zowe-explorer-vscode/issues/3892
#
zowe config init --user-config --overwrite --for-sure
zowe config set "profiles" "{\"zxplore\":{\"profiles\":{},\"secure\":[\"user\",\"password\"]}}" --json --user-config

zowe config list
