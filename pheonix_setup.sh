#!bin/bash

# http://elixir-lang.org/install.html
brew update
brew install elixir

# http://www.phoenixframework.org/docs/installation
mix local.hex
mix archive.install https://github.com/phoenixframework/phoenix/releases/download/v1.1.2/phoenix_new-1.1.2.ez

echo "Erlang, Elixir, and Pheonix installed! If this worked properly, you should now see the elixir console open up. Use CTRL+C to exit"

iex
