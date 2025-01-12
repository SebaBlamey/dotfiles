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
alias cat='bat --theme=Everblush'

# alias for copypath
alias cpath='copypath'

alias vi='nvim'
alias vim='nvim'

alias sync_gdrive='sh $HOME/.bash_scripts/sync_gdrive.sh'
alias cupdate='sh $HOME/.bash_scripts/update_checker.sh --check'
alias update_mirrors='sudo reflector --country Chile --age 12 --protocol https --sort rate --number 15 --save /etc/pacman.d/mirrorlist'

alias fzf='fzf --preview "bat --style=numbers --color=always --line-range=:500 {}"'
alias gl='git log --date=local'

export PATH=$HOME/.local/bin:$PATH

# Agregar GOPATH/bin al PATH
export PATH=$PATH:$(go env GOPATH)/bin

export ANDROID_HOME=/home/seba/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools
export FZF_DEFAULT_OPTS='
  --color fg:#5d6466,bg:#1e2527
  --color bg+:#ef7d7d,fg+:#2c2f30
  --color hl:#dadada,hl+:#26292a,gutter:#1e2527
  --color pointer:#373d49,info:#606672
  --border
  --color border:#1e2527
  --height 13'
# bun completions
[ -s "/home/seba/.bun/_bun" ] && source "/home/seba/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
