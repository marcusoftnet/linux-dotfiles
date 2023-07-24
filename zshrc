# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ~/.zshrc

export PATH=$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
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
source $HOME/dotfiles/zsh/functions

# Travis CI
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Include local settings
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

source /home/marcus/.orion/orion.zshrc

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# start serenade as a separate process
/home/marcus/bin/Serenade-2.0.2.AppImage &

source /home/marcus/.orion/orion.zshrc

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/marcus/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/marcus/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/marcus/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/marcus/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libstdc++.so.6