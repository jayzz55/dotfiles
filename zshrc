# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="dracula-pro"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git autojump asdf)

ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
  export GIT_EDITOR=vim
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# source aws saml authenticate
# source $HOME/Documents/code/the-money/saml-aws-functions/bash-functions
# source $HOME/.ghcup/env
# export SSL_CERT_FILE=/usr/local/etc/openssl/cert.pem

# function ssh_bastion() {
#   echo 'You must had `authenticate` to `prod-developer`.'
#   /Users/jaya.wijono/Documents/code/the-money/bastion/bin/ssh
# }

# Add GHC 7.8.4 to the PATH, via http://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.8.4.app"
if [ -d "$GHC_DOT_APP" ]; then
    export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

# This function require these 2:
# https://git.realestate.com.au/cowbell/rea-as
# https://github.com/stevenocchipinti/pecorb
function idp {
  export $(rea-as saml | pecorb | xargs rea-as saml) > /dev/null
  echo "Role: ${AWS_ROLE-(not set)}"
}

# replace standard ls with exa (https://the.exa.website/)
alias ls="exa"
# replace standard cat with bat (https://github.com/sharkdp/bat)
alias cat="bat"

# Asdf version manager
. "/usr/local/opt/asdf/libexec/asdf.sh"


# setup GO Workspace
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig/:$PKG_CONFIG_PATH"

# setup aliases for kubectl
function k() { kubectl "${@:2}" --context "$1"; }
function ka() { kubectl "${@:2}" --as admin --as-group system:masters --context "$1"; }
alias s="stern --context"

# BEGIN alias for kubectl
function k() { if [[ $2 = -* ]]; then kubectl --context "$1" "${@:2}"; else kubectl "$2" --context "$1" "${@:3}"; fi; }
function ka() { if [[ $2 = -* ]]; then kubectl --as admin --as-group system:masters --context "$1" "${@:2}"; else kubectl "$2" --as admin --as-group system:masters --context "$1" "${@:3}"; fi; }
alias s="stern --context"
# END

# bun completions
[ -s "/Users/jaya.wijono/.bun/_bun" ] && source "/Users/jaya.wijono/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

alias python="python3"
