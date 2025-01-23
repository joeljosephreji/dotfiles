# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/joel/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Autosuggestions settings
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# find better keybindings because this wouldn't work with multiline: show only history which begins with the same string
# bindkey -M vicmd 'k' history-search-backward
# bindkey -M vicmd 'j' history-search-forward

# # Git prompt - not used anymore because of oh my posh
# autoload -Uz add-zsh-hook vcs_info
# setopt prompt_subst
# add-zsh-hook precmd vcs_info
# PROMPT='%F{yellow}%*%f %B%F{cyan}%n%f%b in %B%F{blue}%~%f%b %F{magenta}${vcs_info_msg_0_}%f %# '
# zstyle ':vcs_info:*' enable git
# zstyle ':vcs_info:*' check-for-changes true
# zstyle ':vcs_info:*' unstagedstr ' *'
# zstyle ':vcs_info:*' stagedstr ' +'
# zstyle ':vcs_info:git:*' formats       '(%b%u%c)'
# zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

# fzf color scheme
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

# zsh syntax highlighting
source ~/.config/zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh

# zoxide
eval "$(zoxide init zsh)"

# ls to have colour by default
alias ls="ls --color"

# Completion styling
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# fzf integration
source <(fzf --zsh)

# oh my posh integration
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/config.toml)"

