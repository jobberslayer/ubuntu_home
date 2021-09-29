# Set up the prompt
#
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_HIDE_IF_PWD_IGNORED=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

autoload -Uz promptinit
setopt PROMPT_SUBST

PS1=$'\n''%F{yellow}┌─%f%F{cyan}%n@%m%b%f%F{magenta}[zsh]%f %~'$'\n''%F{yellow}└─%f  '
PS2="%F{yellow}└─ %f "

export RPROMPT='$(__git_ps1 "(%s)") %F{black}%K{yellow}%D{%L:%M %m/%d}%k%f'

setopt histignorealldups sharehistory

# Use vi keybinding 
bindkey -v

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

. /usr/share/autojump/autojump.sh

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# ALIASES

#alias ps2="ps auxw|grep -v grep|grep"
alias ls='lsd -FA'
alias ll='ls -lAh|batcat -l Sass'

myps() {
  ps auxw|grep -v grep|grep $1|batcat -l Sass
}

myapt_search() {
  sudo apt search $1|batcat -l Sass
}

alias myapt_install="sudo apt install"

alias myjim="rvm gemset use"
alias myexternal_ip='wget http://ipinfo.io/ip -qO -'
alias myto_csv='libreoffice --headless --convert-to csv'
alias myupdate='sudo apt-get update; sudo apt-get upgrade; sudo apt-get dist-upgrade; need_reboot.sh'
alias myless='less -M +Gg'
alias mycal='cal -A 1'
alias mygittoken='xclip -sel c < ~/Dropbox/.git-token'

alias mymap='xmodmap ~/ubuntu_home/.Xmodmap_popos'

alias myclock='figlet -c `date`'
alias mysystem='neofetch'
alias myfiles='gdu'
alias mytop='bpytop'
alias myspeed='speedtest'

alias mystart-vpn='sudo openvpn --config "$HOME/openvpn/FinLogic OpenVPN/FinLogicProd.ovpn"'

alias mysleepy-time='xset dpms force off'

alias mymontage='rm out.jpg; montage -geometry 1600x1600 *.jpg out.jpg'

alias mybattery='acpi -V|grep -i battery'

alias myopen='xdg-open'
alias mymake_excel='unoconv --format xls'

alias myweather='curl http://wttr.in?u'

alias mytmux-cheat='cat $HOME/Dropbox/tmux/tmux-cheat-sheet.txt'

alias xcomp='xcompmgr -c -l0 -t0 -r0 -o.00'

# /ALIASES


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
