# Install brew
if [[ $(command -v brew) == "" ]]; then
    echo "Installing Hombrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Updating Homebrew"
    brew update
fi

# Make sure essential directories and files exist
mkdir ~/Projects
touch ~/.gitconfig.user
touch ~/.system_aliases
mkdir -p ~/.vim/tmp/backups                                                                                                                         ✭
mkdir -p ~/.vim/tmp/swp

# Setup aliases to dotfiles
if [ ! -f ~/.gitconfig ]; then
  ln -s ~/dotfiles/git/gitconfig ~/.gitconfig
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

# Install dependencies
brew tap heroku/brew
brew install cask rbenv-gemset heroku git fzf
brew tap caskroom/fonts
brew cask install iterm2 gitkraken spotify firefox google-chrome videostream font-hack-nerd-font
