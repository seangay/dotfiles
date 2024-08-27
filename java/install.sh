#!/usr/bin/env bash

set -e

#
# https://github.com/git-ecosystem/git-credential-manager/blob/release/docs/install.md
#

echo "› java"
brew install java


echo "    › setting up symbolic links for system"
sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

