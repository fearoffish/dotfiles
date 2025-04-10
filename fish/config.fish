#
# Env
#

# Set vars for dotfiles and special dirs.
#set -g ZDOTDIR $XDG_CONFIG_HOME/zsh
set -gx DOTFILES $HOME/dotfiles
set -gx MY_PROJECTS $HOME/a

# Set initial working directory.
set -g IWD $PWD

#
# Utils
#

# Initialize direnv.
if type -q direnv
    direnv hook fish | source
end

# Initialize fuzzy finder.
if type -q fzf
    if not test -r $__fish_cache_dir/fzf_init.fish
        fzf --fish >$__fish_cache_dir/fzf_init.fish
    end
    source $__fish_cache_dir/fzf_init.fish
end

# Initialize zoxide for fast jumping with 'z'.
if type -q zoxide
    if not test -r $__fish_cache_dir/zoxide_init.fish
        zoxide init fish >$__fish_cache_dir/zoxide_init.fish
    end
    source $__fish_cache_dir/zoxide_init.fish
end

# Disable new user greeting.
set fish_greeting

# Initialize starship.
if type -q starship
    set -gx STARSHIP_CONFIG $__fish_config_dir/themes/starship.toml
    if not test -r $__fish_cache_dir/starship_init.fish
        starship init fish --print-full-init >$__fish_cache_dir/starship_init.fish
    end
    source $__fish_cache_dir/starship_init.fish
    enable_transience

    # Start prompt at the bottom
    # tput cup 9999 0
end

# get mise working in the terminal and editors
if status is-interactive
    mise activate fish | source
else
    mise activate fish --shims | source
end

#
# Theme
#

fish_config theme choose $FISH_THEME

#
# GnuPG
#
set -Ux GNUPGHOME $HOME/.gnupg

#
# Emacs keybindings for fish
#
fish_default_key_bindings

#
# Aliases
#
alias gs "git status"
alias lg lazygit
alias be "bundle exec"
alias bi "bundle install"
alias ls eza
alias ll "eza -hal"
alias tree "eza -T"
alias v neovide
