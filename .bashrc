# breaks scp
#figlet wkL

black="\[\e[0;30m\]"
red="\[\e[0;31m\]"
green="\[\e[0;32m\]"
yellow="\[\e[0;33m\]"
blue="\[\e[0;34m\]"
purple="\[\e[0;35m\]"
cyan="\[\e[0;36m\]"
white="\[\e[0;37;1m\]"
orange="\[\e[0;91m\]"

bold_black="\[\e[30;1m\]"
bold_red="\[\e[31;1m\]"
bold_green="\[\e[32;1m\]"
bold_yellow="\[\e[33;1m\]"
bold_blue="\[\e[34;1m\]"
bold_purple="\[\e[35;1m\]"
bold_cyan="\[\e[36;1m\]"
bold_white="\[\e[37;1m\]"
bold_orange="\[\e[91;1m\]"

underline_black="\[\e[30;4m\]"
underline_red="\[\e[31;4m\]"
underline_green="\[\e[32;4m\]"
underline_yellow="\[\e[33;4m\]"
underline_blue="\[\e[34;4m\]"
underline_purple="\[\e[35;4m\]"
underline_cyan="\[\e[36;4m\]"
underline_white="\[\e[37;4m\]"
underline_orange="\[\e[91;4m\]"

background_black="\[\e[40m\]"
background_red="\[\e[41m\]"
background_green="\[\e[42m\]"
background_yellow="\[\e[43m\]"
background_blue="\[\e[44m\]"
background_purple="\[\e[45m\]"
background_cyan="\[\e[46m\]"
background_white="\[\e[47;1m\]"
background_orange="\[\e[101m\]"

normal="\[\e[0m\]"
reset_color="\[\e[39m\]"

. /usr/share/autojump/autojump.sh


#export PS1="\n${debian_chroot:+($debian_chroot)}${bold_red}\u@\h ${bold_blue}\w \n${bold_yellow}@xxxx{${bold_white}::::::::::::> ${reset_color}"
export PS1="\n${bold_green}┌─${debian_chroot:+($debian_chroot)}${bold_blue}\u@\h ${bold_red}\w \n${bold_green}└─  ${reset_color}"
export PS2="${bold_green}└─ ${reset_color}"

export TERM="xterm-256color"
#export PS1='\n\n`echo "\w"|boxes -d columns`\n\n\u@\h=> ' 

export VISUAL=vim
export EDITOR="$VISUAL"

set editing-mode vi
set keymap vi-command

#setup dynamic terminal title
settitle () {
    echo -ne "\033]0;$1\007"
}

trap 'echo $BASH_COMMAND |awk '\''!/\007/ {printf "\033]0;%s\007", $0}'\' DEBUG
#PROMPT_COMMAND='echo -ne "\033]0;Kevin wuz here!\007"'
PROMPT_COMMAND='echo -ne "\033]0;`pwd`\007"'

#/setup dynamic terminal title

# ALIASES

#alias ps2="ps auxw|grep -v grep|grep"
alias ls='lsd -FA'
alias ll='ls -lAh|batcat'

myps() {
  ps auxw|grep -v grep|grep $1|batcat
}

alias myjim="rvm gemset use"
alias myexternal_ip='wget http://ipinfo.io/ip -qO -'
alias myto_csv='libreoffice --headless --convert-to csv'
alias myupdate='sudo apt-get update; sudo apt-get upgrade; sudo apt-get dist-upgrade; need_reboot.sh'
alias myless='less -M +Gg'
alias mycal='cal -A 1'
alias mygittoken='xclip -sel c < ~/Dropbox/.git-token'

alias mymap='xmodmap ~/ubuntu_home/.Xmodmap_popos'

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

# use command line like vi
set -o vi

umask 000

PATH=$PATH:$HOME/bin:$HOME/.rvm/bin # Add RVM to PATH for scripting

function myfindit() {
  find . -name "*$1*"
}

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

