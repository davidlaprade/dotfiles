#!bin/bash

# http://elixir-lang.org/install.html
brew update
brew install elixir

# http://www.phoenixframework.org/docs/installation
mix local.hex
mix archive.install https://github.com/phoenixframework/phoenix/releases/download/v1.1.2/phoenix_new-1.1.2.ez

# http://exponential.io/blog/2015/02/21/install-postgresql-on-mac-os-x-via-brew/
echo "Installing postgresql..."
brew uninstall --force postgresql
brew install postgresql

echo "Creating first postgres database..."
initdb /usr/local/var/postgres/ -E utf8
createdb `whoami`

echo "Starting postgres server..."
pg_ctl -D /usr/local/var/postgres/ -l logfile start

echo "Logging into postgres for the first time. Enter the following command: `CREATE ROLE postgres LOGIN CREATEDB`. Then exit with `CTRL + d`"
psql

echo "Erlang, Elixir, and Pheonix installed! If this worked properly, you should now see the elixir console open up. Use CTRL+C to exit"

iex
