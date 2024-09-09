# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"
CASE_SENSITIVE="true"
ENABLE_CORRECTION="false"

# hide the username
#DEFAULT_USER prompt_context(){}

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Fabians configuration

export EDITOR='code'

# -------
# Aliases
# -------
alias l="ls" # List files in current directory
alias ll="ls -al" # List all files in current directory in long list format
alias o="open ." # Open the current directory in Finder

# ----------------------
# Git Aliases
# ----------------------
alias gaa='git add .'
alias gcm='git commit -m'
alias gpsh='git push'
alias gss='git status -s'

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/fabswill/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/fabswill/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/fabswill/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/fabswill/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<