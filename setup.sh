brew install cask rbenv-gemset

# Only installing the things that my current job's `sh` file doesn't install for me
brew cask install karabiner iterm2 trailer gitkraken atom spotify firefox

touch ~/.gitconfig.user
mkdir ~/Rails ~/Ember ~/Projects

# Setup aliases to dotfiles
ln -s ~/.dotfiles/aprc .aprc
ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/gitignore ~/.gitignore
touch ~/.system_aliases
ln -s ~/.dotfiles/aliases ~/.aliases
ln -s ~/.dotfiles/zshrc ~/.zshrc

mkdir ~/.atom
rm -rf ~/.atom/keymap.cson
ln -s ~/.dotfiles/atom/keymap.cson ~/.atom/keymap.cson
apm install vim-mode file-icons block-comment aligner pigments tool-bar tool-bar-main selector-to-tag minimap minimap-bookmarks minimap-autohide hbs-beautify merge-conflicts file-icon-supplement docblockr
