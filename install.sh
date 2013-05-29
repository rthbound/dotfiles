#!/bin/bash
set -e

# Full path to local repository
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s "${DIR}/gitconfig" ~/.gitconfig
