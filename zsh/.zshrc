# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh-history
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch notify
unsetopt autocd beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U colors && colors
PS1="%{$fg[green]%d%}
%{$fg[magenta]%}λ %{$reset_color%}%"

alias l='ls -lg --color'
alias la='ls -lga --color'
alias emacs='emacsclient -c'
