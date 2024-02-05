HISTFILE=$HOME/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
unsetopt beep

WORDCHARS=${WORDCHARS/\/}
bindkey "^[[3~" delete-char       # Del = delete character right
bindkey "^[[1;5C" forward-word    # Ctrl+Right = move one word right
bindkey "^[[1;5D" backward-word   # Ctrl+Left = move one word left
bindkey "^[[3;5~" delete-word     # Ctrl+Del = delete one word right
bindkey "^H" backward-delete-word # Ctrl+Backspace = delete one word left

zstyle :compinstall filename "$HOME/.zshrc"
zstyle ':completion:*' rehash true

autoload -Uz compinit && compinit

export PROMPT="%B%2~%b %# "

export GPG_TTY=$(tty)
export TERMINAL=kitty
export EDITOR=nvim

export SWITCH_IP="192.168.1.162"
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export DEVKITPPC=/opt/devkitpro/devkitPPC

alias ls="ls --color=auto"
alias cal="cal -m"
alias feh="feh --force-aliasing --keep-zoom-vp"
alias gdb-switch="gdb-multiarch -ex \"target extended-remote $SWITCH_IP:22225\" -ex \"monitor wait application\""
alias neofetch="neofetch --ascii $HOME/.config/neofetch/trans_arch.txt --ascii_colors 75 212 231"
alias rc="radix-calc"

alias ua-drop-caches='sudo paccache -rk3'
alias ua-update-mirrors='export TMPFILE="$(mktemp)"; \
	sudo true; \
	rate-mirrors --save=$TMPFILE arch --max-delay=21600 \
	&& sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist-backup \
	&& sudo mv $TMPFILE /etc/pacman.d/mirrorlist'

alias ua-update-all='ua-update-mirrors \
	&& ua-drop-caches \
	&& sudo pacman -Syu'
