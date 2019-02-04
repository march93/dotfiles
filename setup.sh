# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap heroku/brew
brew install cask rbenv-gemset heroku git
brew cask install iterm2 gitkraken spotify firefox google-chrome videostream

mkdir ~/Projects
touch ~/.gitconfig.user
touch ~/.system_aliases

# Setup aliases to dotfiles
if [ ! -f ~/.gitconfig ]; then
  ln -s ~/dotfiles/git/gitconfig ~/.gitconfig
fi

if [ ! -f ~/.aliases ]; then
  ln -s ~/dotfiles/aliases ~/.aliases
fi

if [ ! -f ~/.zshrc ]; then
  ln -s ~/dotfiles/zshrc ~/.zshrc
fi

if [ ! -f ~/.gitignore ]; then
  ln -s ~/dotfiles/git/gitignore ~/.gitignore
fi

if [ ! -f ~/.vimrc ]; then
  ln -s ~/dotfiles/vimrc ~/.vimrc
fi
