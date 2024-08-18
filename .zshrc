export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="cloud"

plugins=(
  git
  sudo
  urltools
  bgnotify
  copypath
  zsh-autosuggestions
  zsh-syntax-highlighting
  fzf-tab
)

source $ZSH/oh-my-zsh.sh
autoload -U promptinit; promptinit
prompt pure

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# alias for ls
alias ls='exa --icons'
alias l='exa -lah --color=always --group-directories-first --icons'
alias la='exa -al --color=always --group-directories-first --icons' 
alias ll='exa -l --color=always --group-directories-first --icons'
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing 

# alias for cat
alias cat='bat --theme=Nord'

# alias for copypath
alias cpath='copypath'

alias sync_gdrive='sh $HOME/.bash_scripts/sync_gdrive.sh'
alias cupdate='sh $HOME/.bash_scripts/update_checker.sh --check'

alias fzf='fzf --preview "bat --style=numbers --color=always --line-range=:500 {}"'
export PATH=$HOME/.local/bin:$PATH
