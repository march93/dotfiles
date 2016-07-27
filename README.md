## Installation

```git clone http://github.com/ivar/dotfiles.git ~/.dotfiles/```

## Setup

- Run the `setup.sh` file
- Update the `~/.gitconfig.user` file to look like:

```
[user]
        name = Your Name
        email = you@example.com
```

## Zsh / Oh-my-zsh
1. install zsh (`brew install zsh`)
2. [install oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh#basic-installation)

##  Vim
2. ```ln -s ~/.dotfiles/vimrc ~/.vimrc```
3. ```ln -s ~/.dotfiles/dotvim/ ~/.vim```
4. ```cd ~/.dotfiles && git submodule init && git submodule update```

(Note: after installation you will have to compile command-T)

##### to update vim plugins
```git submodule foreach git pull origin master```

##### to add new vim bundle
```git submodule add git@mygithost:billboard dotvim/bundle/```

##### Vim colourschemes added
* distinguished
* grb256
* solarized
