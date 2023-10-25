# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HISTFILE=$HOME/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

WORDCHARS=${WORDCHARS/\/}
bindkey "^[[3~" delete-char
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3;5~" delete-word
bindkey "^H" backward-delete-word

zstyle :compinstall filename "$HOME/.zshrc"
zstyle ':completion:*' rehash true

autoload -Uz compinit && compinit
autoload -Uz promptinit && promptinit
#prompt redhat

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export GPG_TTY=$(tty)
export TERMINAL=kitty
export EDITOR=nvim
export SWITCH_IP="192.168.1.162"

export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export DEVKITPPC=/opt/devkitpro/devkitPPC

alias ls="ls --color=auto"
alias gdb-switch="gdb-multiarch -ex \"target extended-remote $SWITCH_IP:22225\" -ex \"monitor wait application\""
alias neofetch="neofetch --ascii $HOME/.config/neofetch/trans_arch.txt --ascii_colors 75 212 231"

PATH="$HOME/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"$HOME/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"; export PERL_MM_OPT;

export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
