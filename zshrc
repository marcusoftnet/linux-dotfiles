# ~/.zshrc

export PATH=$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
export EDITOR="code"
export BUNDLER_EDITOR="code"
export MANPAGER="less -X" # Don’t clear the screen after quitting a manual page
export TERM="screen-256color"
export SOURCE_ANNOTATION_DIRECTORIES="spec"

setopt auto_cd
cdpath=($HOME/code $HOME/Developer $HOME/Sites $HOME/Dropbox $HOME)

HISTSIZE=20000
SAVEHIST=20000
HISTFILE=~/.zsh_history

source $HOME/dotfiles/zsh/oh-my-zsh
source $HOME/dotfiles/zsh/aliases
source $HOME/dotfiles/zsh/prompt
source $HOME/dotfiles/zsh/functions

# Travis CI
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Include local settings
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
