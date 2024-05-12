if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export ANDROID_HOME="/home/seba/Android/Sdk"
export PATH="/bin:$ANDROID_HOME/platform-tools:/usr/bin:/usr/local/bin:$HOME/.cargo/bin:/usr/local/bin/docker:$PATH"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  sudo
  urltools
  bgnotify
  copypath
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$PATH:/home/seba/.bin"
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

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

export PATH=$PATH:/home/seba/.spicetify
