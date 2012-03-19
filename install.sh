#!/usr/bin/env bash
#
# Dradis Framework installation script
#
# Description:
#   This script will install all the necessary dependencies required to run the
# Dradis Framework.
#
# If any of them should be run as root, the script will provide the instructions
# to do so.
#
# License:
#   This file may be used under the terms of the GNU General Public
# License version 2.0 as published by the Free Software Foundation
# and appearing in the file LICENSE.txt included in the packaging of
# this file.
#
# Copyright: Security Roots Ltd. 


echo "Installing RVM (Ruby Version Manager) ..."
if [[ -d ~/.rvm ]]; then
  echo "RVM already installed under $HOME/.rvm/"
else
  bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
  source ~/.bash_profile
fi

# Load RVM if available
if [[ -s "$HOME/.rvm/scripts/rvm" ]]; then
  . "$HOME/.rvm/scripts/rvm"
  echo "RVM version: `rvm version | awk {print $2}`"
else
  echo "There is something wrong with the RVM installation $HOME/.rvm/scripts/rvm not found. Consider reinstalling."
fi