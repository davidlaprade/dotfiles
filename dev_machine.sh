#!/bin/bash

bash brew.sh
bash bootstrap.sh

read -p "WARNING: you are about to install a very opinionated set of OSX applications, do you want to continue? (Y,n)" -n 1
echo
if [[ $REPLY =~ Y ]]; then
  bash cask.sh
fi

read -p "WARNING: you are about to install a very opinionated set of OSX configs, do you want to continue? (Y,n)" -n 1
echo
if [[ $REPLY =~ Y ]]; then
  bash osx.sh
fi

printf "CONGRATULATIONS! Your development machine is all set!\n\nIf you are using iTERM, you may want to change your text colors. To do so, go to iTERM > Preferences > Colors."
