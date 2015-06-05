# davidlaprade’s dotfiles

## General Installation
```bash
bash dev_machine.sh
```
The install script should take it from there!

## Vim Installation/Update
First install vim using homebrew:
```bash
brew update
brew install vim
```

Next install c-tags:
```bash
brew install ctags
```

Next sym-link your `.vimrc` and `.vimrc.bundles` files into home:
```bash
cd && ln -s path/to/this/directory/.vimrc &&\
    ln -s path/to/this/directory/.vimrc.bundles
```

The `.vimrc` and `.vimrc.bundles` files presuppose that you have
a `~/.vim` directory created with the following structure:
```bash
$ tree .vim
.vim
├── autoload
│   └── plug.vim
└── bundle
```

The `plug.vim` file comes from [vim-plug](https://github.com/junegunn/vim-plug),
which has to be installed via:
```bash
mkdir ~/.vim/autoload && curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Restart your terminal session. Make sure you've copied the `.vimrc` and `.vimrc.bundles` files into
your home directory `~`. Open vim and run `:PlugInstall` to install the plugins.
You should be good to go with vim from here!

## Thanks to…
* [Mathias Bynens](https://github.com/mathiasbynens) for sharing his amazing collection of [dotfiles](https://github.com/mathiasbynens/dotfiles)
* [thoughtbot](https://github.com/thoughtbot/dotfiles) for sharing their awesome
  `vimrc` configs
