HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

unsetopt beep
bindkey -e

bindkey "^[[3~" delete-char       # Del = delete character right
bindkey "^[[1;5C" forward-word    # Ctrl+Right = move one word right
bindkey "^[[1;5D" backward-word   # Ctrl+Left = move one word left
bindkey "^[[3;5~" delete-word     # Ctrl+Del = delete one word right
bindkey "^H" backward-delete-word # Ctrl+Backspace = delete one word left

autoload -Uz compinit && compinit
autoload -Uz promptinit && promptinit

zstyle :compinstall filename "$HOME/.zshrc"
zstyle ':completion:*' rehash true

export PROMPT="%B%2~%b %(?..[%F{red}%?%f] )%# ";
 
alias ls="ls --color=auto"
alias cal="cal -m"
alias feh="feh --force-aliasing --keep-zoom-vp"
alias neofetch="hyfetch"
alias rc="radix-calc"
