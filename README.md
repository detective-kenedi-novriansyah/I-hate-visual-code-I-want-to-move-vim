## KND-NEWBIE - Kenedi Novriansyah

## NVIM

#### Youtube https://www.youtube.com/channel/UCiAGAKn6VGst6zLMif9_3rQ?view_as=subscriber

### Configure File

#### [x] Tmux

```
- mkdir autoload/tmuxline
- mkdir autoload/themes
- cp tmux/autoload/*.vim ~/.config/nvim/autoload
- cp tmux/autoload/tmuxline/presets/*.vim ~/.config/nvim/autoload/tmuxline/presets
- cp tmux/autoload/tmuxline/themes/*.vim ~/.config/nvim/autoload/tmuxline/themes

```

#### [x] Gundo

```
- cp gundo/autoload/*.* autoload
```

#### [x] Unite

```
- mkdir autoload/unite
- mkdir autoload/vital
- cp unite/autoload/*.vim ~/.config/nvim/autoload
- cp unite/autoload/unite/*.vim ~/.config/nvim/autoload/unite
```

#### [x] Installer Rust Recommended

```
- curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

#### [x] Installer Requirements

If can't not install package using python2.7
you can following this

```
- curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
- python get-pip.py
```

and now you can install using python2.7

```
- pip 2 & 3 => install pynvim, neovim-remote neovim
and
- gem install neovim
```

If you use Mac Osx Requirements

```
- brew install rbenv
- export PATH="$HOME/.rbenv/bin:$PATH"
- eval "$(rbenv init -)"
```

more you can look in here https://github.com/rbenv/rbenv#readme

Installer RVM Requirements

```
\curl -sSL https://get.rvm.io | bash

- echo "source $HOME/.rvm/scripts/rvm" >> ~/.bash_profile
  or
- echo "source $HOME/.rvm/scripts/rvm" >> ~/.zshrc
```

#### Open terminal

Automatic Install Plugin

```
command vim +PlugInstall +qall
```

```
Error E5105: Error while calling lua chunk: ....configure/nvim/autoload/nvim-lsp/lua/lspconfig/util.lua:11: attempt to index local 'lsp' (a nil value)
```

bad its okey not problem

Happy Hacking

if you want give me coffee you can message me on my facebook kenedi novriansyah
Thanks
