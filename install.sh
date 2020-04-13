#!/bin/sh

set -e

echo "Installing Homebrew packages..."
brew update
brew tap homebrew/bundle
brew bundle
for brewfile in Brewfile; do
  brew bundle --file="$brewfile"
done
echo "Finished installing Homebrew packages.. moving on.."

echo "Installing Vundle.."
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/Vundle.vim

echo "Linking dotfiles into ~..."
# Before `rcup` runs, there is no ~/.rcrc, so we must tell `rcup` where to look.
# We need the rcrc because it tells `rcup` to ignore thousands of useless Vim
# backup files that slow it down significantly.
RCRC=rcrc rcup -v

echo "Installing Vim packages..."
vim +PlugInstall +qa

# echo "Installing Bash_it..."
# git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
# ~/.bash_it/install.sh

echo "Installing Zsh Plugins..."
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
chmod 700 ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Change the default shell to Zsh..."
chsh -s /bin/zsh

echo "Installing bash-my-aws"
git clone https://github.com/realestate-com-au/bash-my-aws.git ~/.bash-my-aws

echo "Installing Ruby..."
curl -sSL https://get.rvm.io | bash -s stable --ruby

echo
echo "If you like what you see in system/osx-settings, run ./system/osx-settings"
echo "If you're using Terminal.app, check out the terminal-themes directory"
