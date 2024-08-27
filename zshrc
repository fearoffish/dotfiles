export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
HIST_STAMPS="dd/mm/yyyy"

plugins=(git ruby zoxide fzf asdf)

source $ZSH/oh-my-zsh.sh
source ~/.exports
source ~/.aliases
source ~/.api_keys

# Add all Homebrew completions
if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

. /opt/homebrew/opt/asdf/libexec/asdf.sh
