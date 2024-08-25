
ZSH_THEME="robbyrussell"
HIST_STAMPS="dd/mm/yyyy"

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
plugins=(git ruby zoxide fzf asdf)

source ~/.exports
source ~/.aliases
source ~/.sources

# Add all Homebrew completions
if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

eval "$(starship init zsh)"

. /opt/homebrew/opt/asdf/libexec/asdf.sh
