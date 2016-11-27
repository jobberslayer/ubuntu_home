figlet wkL

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

#export PS1="\n${debian_chroot:+($debian_chroot)}${bold_red}\u@\h ${bold_blue}\w \n${bold_yellow}@xxxx{${bold_white}::::::::::::> ${reset_color}"
export PS1="\n${bold_green}┌─${debian_chroot:+($debian_chroot)}${bold_black}\u@\h ${bold_red}\w \n${bold_green}└─  ${reset_color}"
export PS2="${bold_green}└─  ${reset_color}"

export TERM="xterm-256color"
#export PS1='\n\n`echo "\w"|boxes -d columns`\n\n\u@\h=> ' 

alias ps2="ps auxw|grep -v grep|grep"
alias jim="rvm gemset use"
alias remap="xmodmap /home/kevin/bin/caplock_to_escape.xmodmap"
alias rr='rails runner'
alias multi-monitors='arandr'
alias external_ip='wget http://ipinfo.io/ip -qO -'

alias weather='curl wttr.in'

alias mymontage='rm out.jpg; montage -geometry 1600x1200 *.jpg out.jpg'

alias myopen='xdg-open'
alias make_excel='unoconv --format xls'
alias reload_xresources='xrdb -load ~/.Xresources'

alias geekfind='geeknote find --search'
function geekedit() { geeknote edit '$@' ;}
alias geekshow='geeknote show'

alias weather='curl http://wttr.in/'
alias ls='ls -F'

# use command line like vi
set -o vi

umask 000

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
