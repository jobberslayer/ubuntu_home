export PS1='\n${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[01;34m\] \w \n\[\033[1;33m\]@xxxx{\[\033[1;37m\]::::::::::::> \[\033[00m\]'
export TERM="xterm-256color"

alias ps2="ps auxw|grep -v grep|grep"
alias jim="rvm gemset use"
alias remap="xmodmap /home/kevin/bin/caplock_to_escape.xmodmap"
alias rr='rails runner'

alias mymontage='rm out.jpg; montage -geometry 1600x1200 *.jpg out.jpg'

alias myopen='xdg-open'
alias make_excel='unoconv --format xls'
alias reload_xresources='xrdb -load ~/.Xresources'

# use command line like vi
set -o vi

umask 000

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
