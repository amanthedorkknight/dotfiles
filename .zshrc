#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# sourcing .profile file
source ~/.profile
source ~/.credorc
# VIM zshell
bindkey -v #switch to vim mode
bindkey -M viins 'jj' vi-cmd-mode #binds my favourite vim binding
#commented function for showing vim mode (in osx zshell took forever)
#in prezto prompt works perfectly
#function zle-line-init zle-keymap-select {
#  RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#  RPS2=$RPS1
#  zle reset-prompt
#}
#zle -N zle-line-init
#zle -N zle-keymap-select

alias vim=nvim

alias httpserver="python -m SimpleHTTPServer"

  
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home/
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home

export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/tomas.vik/.boot2docker/certs/boot2docker-vm

eval "$(nodenv init -)"
