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

Next install c-tags and some associated programs:
```bash
brew install ctags
gem install gem-ctags
gem ctags
```

Next sym-link your `.vimrc`, `.vimrc.bundles`, and `.git_templates` into `~`:
```bash
cd && ln -s path/to/this/directory/.vimrc &&\
    ln -s path/to/this/directory/.vimrc.bundles &&\
    ln -s path/to/this/directory/.git_templates
```

If you're going to be making any modifications to these files, sym-link the
`.*.local` versions as well. E.g.:
```bash
cd && ln -s path/to/this/directory/.vimrc.local &&\
    ln -s path/to/this/directory/.vimrc.bundles.local
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

Restart your terminal session. Open vim and run `:PlugInstall` to install the plugins.
You should be good to go with vim from here!

To index an existing git repo just run:
```bash
git init && git ctags
```

Here are some [vim
commands](https://gist.github.com/davidlaprade/ec6b0e26a6525f89293a) that I have found useful when getting started.


### Tmux Installation/Configuration

```bash
brew update
brew install tmux
brew install reattach-to-user-namespace
# optional -- adds a battery meter to tmux status bar
brew tap Goles/battery && brew install battery

# add Ressurect Tmux to persist sessions through computer restart
git clone https://github.com/tmux-plugins/tmux-resurrect ~/tmux-resurrect
```

Sym link your config files:
```bash
cd && ln -s path/to/tmux.conf &&\
  ln -s path/to/tmux.conf.local
```

The `.tmux.conf.local` file presupposes that you have
a `~/bin` directory that contains the `tat` and `tmux_attach_autocomplete`
files. So create that directory if it doesn't exist and copy those files in.

Don't forget to source your tmux config files:
```bash
tmux source-file ~/.tmux.conf
```

Make sure iTerm's color preferences are correct. Go to iTerm > Preferences >
Profiles > Terminal and set `Report Terminal Type` to `xterm-256color`.
Otherwise vim's color scheme will get messed up in tmux.

Here are some [tmux commands](https://gist.github.com/davidlaprade/0c54559e9e1007e6aa5b) that I have found useful when getting started.

## Thanks to…
* [iloveitaly](https://github.com/iloveitaly) for turning me on to the idea of
  dotfiles in the first place
* [Mathias Bynens](https://github.com/mathiasbynens) for sharing his amazing collection of [dotfiles](https://github.com/mathiasbynens/dotfiles)
* [thoughtbot](https://github.com/thoughtbot/dotfiles) for sharing their awesome
  `vim` and `tmux` configs
