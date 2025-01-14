
clear
##########
# PROMPT #
##########
PS1='┏━[\u]━━[\w]\n┗━> '


##################
# COMMAND ALIAS' #
##################
alias ls="ls -a"

##############
# NIX ALIAS' #
##############
alias nixconf="sudo -e /etc/nixos/configuration.nix"
alias nixenv="sudo -e /etc/nixos/env.nix"
alias listgen="nixos-rebuild list-generations"
alias nixrb="sudo nixos-rebuild switch"
alias nixgc="sudo nix-collect-garbage -d"

#################
# CONFIG ALIAS' #
#################
alias nvimrc="nvim ~/.config/nvim/init.vim"
alias bashrc="nvim ~/.bashrc"
alias bsprc="nvim ~/.config/bspwm/bspwmrc"
alias sxhkdrc="nvim ~/.config/sxhkd/sxhkdrc"
alias picomrc="nvim ~/.config/picom/picom.conf"
alias kittyrc="nvim ~/.config/kitty/kitty.conf"
alias fetchrc="nvim ~/.config/neofetch/config.conf"
