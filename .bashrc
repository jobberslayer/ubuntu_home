export PS1='\n${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[01;34m\] \w \n\[\033[1;33m\]@xxxx{\[\033[1;30m\]::::::::::::> \[\033[00m\]'
export TERM="xterm-256color"

alias ps2="ps auxw|grep -v grep|grep"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
