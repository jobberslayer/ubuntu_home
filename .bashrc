figlet wkL
export PS1='\n${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[01;34m\] \w \n\[\033[1;33m\]@xxxx{\[\033[1;37m\]::::::::::::> \[\033[00m\]'
host=`hostname`
yellow='\[\033[1;33m\]'
red='\e[38;5;196m'
purple='\[\033[0;35m\]'
default='\[\033[0m\]'

export TERM="xterm-256color"
#export PS1='\n\n`echo "\w"|boxes -d columns`\n\n\u@\h=> ' 

alias ps2="ps auxw|grep -v grep|grep"
alias jim="rvm gemset use"
alias remap="xmodmap /home/kevin/bin/caplock_to_escape.xmodmap"
alias rr='rails runner'
alias multi-monitors='arandr'

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
