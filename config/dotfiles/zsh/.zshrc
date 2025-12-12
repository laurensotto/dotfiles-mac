# Load plugins
source ${ZDOTDIR}/.antidote/antidote.zsh
antidote load

# Configure fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Configure z
source ~/.z-jump/z.sh

# Configure nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Configure history
HISTFILE="${HOME}/.zsh_history"
HISTSIZE=5000
SAVEHIST=5000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt SHARE_HISTORY

# Configure keybindings
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Load theme
[[ ! -f ~/config/dotfiles/zsh/.p10k.zsh ]] || source ~/config/dotfiles/zsh/.p10k.zsh


# Aliases
alias docker-compose='docker compose'
alias lsl='ls -lthr'
alias lsa='ls -lathr'
alias dcu="docker compose up -d"
alias dcua="docker compose up"
alias dcd="docker compose down"
alias dps="docker ps"
alias gco="git co"
alias k="kubectl"
alias kcc="kubectl config use-context"
alias kgc="kubectl config get-contexts"
