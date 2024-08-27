#!/usr/bin/env bash

set -e

#
# https://github.com/git-ecosystem/git-credential-manager/blob/release/docs/install.md
#

# Get the current Java version
old_version=$(java -version 2>&1 | head -n 1)

echo "› java"
brew install java

# Get the "new" Java version after running install
new_version=$(java -version 2>&1 | head -n 1)

if [ "$old_version" != "$new_version" ]; then
    echo "Java was installed or upgraded from $old_version to $new_version."

    echo "    › setting up symbolic links for system"
    sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
else
    echo "Java was already up-to-date."
fi


