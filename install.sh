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

echo "Linking dotfiles into ~..."
# Before `rcup` runs, there is no ~/.rcrc, so we must tell `rcup` where to look.
# We need the rcrc because it tells `rcup` to ignore thousands of useless Vim
# backup files that slow it down significantly.
RCRC=rcrc rcup -v

echo "Installing Vim packages..."
vim +PlugInstall +qa

echo "install Oh my Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing Zsh Plugins..."
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
chmod 700 ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# asdf permission
chmod 700 $(brew --prefix asdf)/asdf.sh

echo "Change the default shell to Zsh..."
chsh -s /bin/zsh

echo "Installing bash-my-aws"
git clone https://github.com/realestate-com-au/bash-my-aws.git ~/.bash-my-aws

echo "Install iTerm fonts"
brew tap homebrew/cask-fonts && brew cask install homebrew/cask-fonts/font-source-code-pro

echo
echo "If you like what you see in system/osx-settings, run ./system/osx-settings"
echo "If you're using Terminal.app, check out the terminal-themes directory"
