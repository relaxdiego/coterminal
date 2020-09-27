#!/bin/bash -e

if which coterminal-add &>/dev/null; then
    echo "Heyyyyy! Coterminal is already installed at $(which coterminal-add)"
    exit 0
fi

# Get the absolute path of this directory
repo_path=$(dirname "${BASH_SOURCE[0]}")
cd ${repo_path}
export repo_path=$(pwd)
cd - >/dev/null

echo "export PATH=${repo_path}/bin:\$PATH" >> $HOME/.bashrc
