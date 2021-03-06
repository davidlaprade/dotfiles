#!/bin/bash
cd "$(dirname "$0")"
git pull
read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  rsync --exclude ".git/" \
  	--exclude ".osx" \
  	--exclude ".brew" \
  	--exclude "my.cnf" \
  	--exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" --exclude "ssh_config" -av . ~
fi

cp -f ./ssh_config ~/.ssh/config
cp -f ./my.cnf /etc/my.cnf
source "$HOME/.bash_profile"

sudo apachectl start
mysql.server restart || sudo killall mysqld